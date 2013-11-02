.class Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;
.super Ljava/lang/Object;
.source "ModulesFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;->this$1:Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, packageName:Ljava/lang/String;
    iget-object v2, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;->this$1:Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;
    invoke-static {v2}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->access$0(Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;)Lde/robv/android/xposed/installer/ModulesFragment;

    move-result-object v2

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment;->enabledModules:Ljava/util/Set;
    invoke-static {v2}, Lde/robv/android/xposed/installer/ModulesFragment;->access$0(Lde/robv/android/xposed/installer/ModulesFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int v0, v2, p2

    .line 129
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 130
    iget-object v2, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;->this$1:Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;
    invoke-static {v2}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->access$0(Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;)Lde/robv/android/xposed/installer/ModulesFragment;

    move-result-object v2

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment;->enabledModules:Ljava/util/Set;
    invoke-static {v2}, Lde/robv/android/xposed/installer/ModulesFragment;->access$0(Lde/robv/android/xposed/installer/ModulesFragment;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 131
    if-eqz p2, :cond_1

    .line 132
    :try_start_0
    iget-object v2, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;->this$1:Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;
    invoke-static {v2}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->access$0(Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;)Lde/robv/android/xposed/installer/ModulesFragment;

    move-result-object v2

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment;->enabledModules:Ljava/util/Set;
    invoke-static {v2}, Lde/robv/android/xposed/installer/ModulesFragment;->access$0(Lde/robv/android/xposed/installer/ModulesFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v2, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;->this$1:Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;

    invoke-virtual {v2}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;->this$1:Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;
    invoke-static {v3}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->access$0(Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;)Lde/robv/android/xposed/installer/ModulesFragment;

    move-result-object v3

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment;->enabledModules:Ljava/util/Set;
    invoke-static {v3}, Lde/robv/android/xposed/installer/ModulesFragment;->access$0(Lde/robv/android/xposed/installer/ModulesFragment;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->setEnabledModules(Landroid/content/Context;Ljava/util/Set;)V

    .line 138
    iget-object v2, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;->this$1:Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;

    invoke-virtual {v2}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;->this$1:Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;
    invoke-static {v3}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->access$0(Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;)Lde/robv/android/xposed/installer/ModulesFragment;

    move-result-object v3

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment;->enabledModules:Ljava/util/Set;
    invoke-static {v3}, Lde/robv/android/xposed/installer/ModulesFragment;->access$0(Lde/robv/android/xposed/installer/ModulesFragment;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lde/robv/android/xposed/installer/PackageChangeReceiver;->updateModulesList(Landroid/content/Context;Ljava/util/Set;)V

    .line 140
    :cond_0
    return-void

    .line 134
    :cond_1
    :try_start_1
    iget-object v2, p0, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter$1;->this$1:Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->this$0:Lde/robv/android/xposed/installer/ModulesFragment;
    invoke-static {v2}, Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;->access$0(Lde/robv/android/xposed/installer/ModulesFragment$ModuleAdapter;)Lde/robv/android/xposed/installer/ModulesFragment;

    move-result-object v2

    #getter for: Lde/robv/android/xposed/installer/ModulesFragment;->enabledModules:Ljava/util/Set;
    invoke-static {v2}, Lde/robv/android/xposed/installer/ModulesFragment;->access$0(Lde/robv/android/xposed/installer/ModulesFragment;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
