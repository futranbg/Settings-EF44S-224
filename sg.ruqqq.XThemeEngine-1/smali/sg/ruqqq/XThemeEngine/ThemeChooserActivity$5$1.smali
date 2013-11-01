.class Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 357
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetThemeIndex:I
    invoke-static {v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$400(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;
    invoke-static {v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$500(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeList:Ljava/util/ArrayList;
    invoke-static {v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$500(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " *"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$600(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mThemeSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$000(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Landroid/widget/Spinner;

    move-result-object v0

    iget-object v1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;

    iget-object v1, v1, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mCurrentSetThemeIndex:I
    invoke-static {v1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$400(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 362
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #getter for: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$600(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 365
    :cond_1
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5$1;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$5;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    const/4 v1, 0x1

    #calls: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->toggleActionsButton(Z)V
    invoke-static {v0, v1}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$700(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;Z)V

    .line 366
    return-void
.end method
