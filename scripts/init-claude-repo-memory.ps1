param(
    [Parameter(Mandatory = $true)]
    [string]$TargetRepo,

    [switch]$Force
)

$ErrorActionPreference = "Stop"

$root = Resolve-Path -LiteralPath (Join-Path $PSScriptRoot "..")
$templateRoot = Join-Path $root "templates"
$target = Resolve-Path -LiteralPath $TargetRepo

function Copy-TemplateFile {
    param(
        [string]$Source,
        [string]$Destination
    )

    $destinationDir = Split-Path -Parent $Destination
    if (-not (Test-Path -LiteralPath $destinationDir)) {
        New-Item -ItemType Directory -Path $destinationDir | Out-Null
    }

    if ((Test-Path -LiteralPath $Destination) -and -not $Force) {
        Write-Host "Skip existing: $Destination"
        return
    }

    Copy-Item -LiteralPath $Source -Destination $Destination -Force:$Force
    Write-Host "Wrote: $Destination"
}

Get-ChildItem -LiteralPath $templateRoot -Recurse -File | ForEach-Object {
    $relative = $_.FullName.Substring($templateRoot.Length).TrimStart("\", "/")
    $destination = Join-Path $target $relative
    Copy-TemplateFile -Source $_.FullName -Destination $destination
}

Write-Host ""
Write-Host "Claude repo memory initialized at: $target"
Write-Host "Next: ask Claude to use agents/claude-repo-onboarding-agent.md to fill the references."

