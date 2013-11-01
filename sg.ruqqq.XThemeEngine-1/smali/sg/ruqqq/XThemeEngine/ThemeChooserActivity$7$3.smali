.class Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$3;
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
    .line 532
    iput-object p1, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$3;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7$3;->this$1:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;

    iget-object v0, v0, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity$7;->this$0:Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;

    #calls: Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->refreshThemeList()V
    invoke-static {v0}, Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;->access$900(Lsg/ruqqq/XThemeEngine/ThemeChooserActivity;)V

    .line 536
    return-void
.end method
