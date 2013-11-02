.class Lde/robv/android/xposed/installer/ModulesFragment$1;
.super Ljava/lang/Object;
.source "ModulesFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/ModulesFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lde/robv/android/xposed/installer/ModulesFragment;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/ModulesFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/ModulesFragment$1;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 70
    iget-object v0, p1, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->appName:Ljava/lang/String;

    iget-object v1, p2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;

    check-cast p2, Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;

    invoke-virtual {p0, p1, p2}, Lde/robv/android/xposed/installer/ModulesFragment$1;->compare(Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;Lde/robv/android/xposed/installer/ModulesFragment$XposedModule;)I

    move-result v0

    return v0
.end method
