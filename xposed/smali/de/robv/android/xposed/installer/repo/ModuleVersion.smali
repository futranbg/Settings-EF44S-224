.class public Lde/robv/android/xposed/installer/repo/ModuleVersion;
.super Ljava/lang/Object;
.source "ModuleVersion.java"


# instance fields
.field public branch:Ljava/lang/String;

.field public changelog:Ljava/lang/String;

.field public changelogIsHtml:Z

.field public code:I

.field public downloadLink:Ljava/lang/String;

.field public md5sum:Ljava/lang/String;

.field public final module:Lde/robv/android/xposed/installer/repo/Module;

.field public name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/repo/Module;)V
    .locals 1
    .parameter "module"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/robv/android/xposed/installer/repo/ModuleVersion;->changelogIsHtml:Z

    .line 15
    iput-object p1, p0, Lde/robv/android/xposed/installer/repo/ModuleVersion;->module:Lde/robv/android/xposed/installer/repo/Module;

    .line 16
    return-void
.end method
