.class Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;
.super Ljava/lang/Object;
.source "ModulesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/installer/ModulesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XposedModule"
.end annotation


# instance fields
.field appName:Ljava/lang/String;

.field description:Ljava/lang/String;

.field icon:Landroid/graphics/drawable/Drawable;

.field minVersion:Ljava/lang/String;

.field moduleVersion:Ljava/lang/String;

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"
    .parameter "moduleVersion"
    .parameter "appName"
    .parameter "icon"
    .parameter "minVersion"
    .parameter "description"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->packageName:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->moduleVersion:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->appName:Ljava/lang/String;

    .line 199
    iput-object p4, p0, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->icon:Landroid/graphics/drawable/Drawable;

    .line 200
    iput-object p5, p0, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->minVersion:Ljava/lang/String;

    .line 201
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->description:Ljava/lang/String;

    .line 202
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    const-string v0, "%s [%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->appName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->moduleVersion:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
