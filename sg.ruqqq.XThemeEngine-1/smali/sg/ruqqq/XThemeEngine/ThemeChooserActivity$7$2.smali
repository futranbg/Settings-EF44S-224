.class Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$2;
.super Ljava/lang/Object;
.source "ThemeChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;


# direct methods
.method constructor <init>(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$2;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 528
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$2;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    const-string v1, "Failed to apply theme!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 529
    return-void
.end method
