.class Landroid/support/v4/widget/ac;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/aa;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/aa;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/aa;->c(I)V

    .line 336
    return-void
.end method
