.class Landroid/support/v4/app/e;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/support/v4/app/m;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1439
    iput-object p1, p0, Landroid/support/v4/app/e;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2
    .parameter

    .prologue
    .line 1442
    iget-object v0, p0, Landroid/support/v4/app/e;->a:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->I:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1443
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1445
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/e;->a:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->I:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
