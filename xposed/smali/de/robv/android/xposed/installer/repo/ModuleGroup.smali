.class public Lde/robv/android/xposed/installer/repo/ModuleGroup;
.super Ljava/lang/Object;
.source "ModuleGroup.java"


# instance fields
.field private final modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/robv/android/xposed/installer/repo/Module;",
            ">;"
        }
    .end annotation
.end field

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/robv/android/xposed/installer/repo/Module;)V
    .locals 2
    .parameter "module"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lde/robv/android/xposed/installer/repo/ModuleGroup;->modules:Ljava/util/List;

    .line 12
    iget-object v0, p1, Lde/robv/android/xposed/installer/repo/Module;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lde/robv/android/xposed/installer/repo/ModuleGroup;->packageName:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lde/robv/android/xposed/installer/repo/ModuleGroup;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    return-void
.end method


# virtual methods
.method public addModule(Lde/robv/android/xposed/installer/repo/Module;)V
    .locals 3
    .parameter "module"

    .prologue
    .line 17
    iget-object v0, p0, Lde/robv/android/xposed/installer/repo/ModuleGroup;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lde/robv/android/xposed/installer/repo/Module;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot add module with package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v2, p1, Lde/robv/android/xposed/installer/repo/Module;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", existing package is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/robv/android/xposed/installer/repo/ModuleGroup;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/installer/repo/ModuleGroup;->modules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public getAllModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/robv/android/xposed/installer/repo/Module;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lde/robv/android/xposed/installer/repo/ModuleGroup;->modules:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModule()Lde/robv/android/xposed/installer/repo/Module;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lde/robv/android/xposed/installer/repo/ModuleGroup;->modules:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/installer/repo/Module;

    return-object v0
.end method
