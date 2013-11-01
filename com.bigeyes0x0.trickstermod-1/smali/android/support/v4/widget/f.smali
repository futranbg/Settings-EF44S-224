.class Landroid/support/v4/widget/f;
.super Ljava/lang/Object;
.source "DrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/e;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/e;)V
    .locals 0
    .parameter

    .prologue
    .line 1320
    iput-object p1, p0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Landroid/support/v4/widget/f;->a:Landroid/support/v4/widget/e;

    invoke-static {v0}, Landroid/support/v4/widget/e;->a(Landroid/support/v4/widget/e;)V

    .line 1323
    return-void
.end method
