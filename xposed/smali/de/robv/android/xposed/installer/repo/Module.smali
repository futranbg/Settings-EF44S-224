.class public Lde/robv/android/xposed/installer/repo/Module;
.super Ljava/lang/Object;
.source "Module.java"


# instance fields
.field public author:Ljava/lang/String;

.field public contact:Ljava/lang/String;

.field public created:J

.field public description:Ljava/lang/String;

.field public descriptionIsHtml:Z

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public final repository:Lde/robv/android/xposed/installer/repo/Repository;

.field public final screenshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public summary:Ljava/lang/String;

.field public updated:J

.field public final versions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/robv/android/xposed/installer/repo/ModuleVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/repo/Repository;)V
    .locals 3
    .parameter "repository"

    .prologue
    const-wide/16 v1, -0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/robv/android/xposed/installer/repo/Module;->descriptionIsHtml:Z

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/robv/android/xposed/installer/repo/Module;->versions:Ljava/util/List;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/robv/android/xposed/installer/repo/Module;->screenshots:Ljava/util/List;

    .line 17
    iput-wide v1, p0, Lde/robv/android/xposed/installer/repo/Module;->created:J

    .line 18
    iput-wide v1, p0, Lde/robv/android/xposed/installer/repo/Module;->updated:J

    .line 21
    iput-object p1, p0, Lde/robv/android/xposed/installer/repo/Module;->repository:Lde/robv/android/xposed/installer/repo/Repository;

    .line 22
    return-void
.end method
