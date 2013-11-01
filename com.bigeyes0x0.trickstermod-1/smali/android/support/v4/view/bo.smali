.class public Landroid/support/v4/view/bo;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/br;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 67
    new-instance v0, Landroid/support/v4/view/bq;

    invoke-direct {v0}, Landroid/support/v4/view/bq;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 69
    new-instance v0, Landroid/support/v4/view/bp;

    invoke-direct {v0}, Landroid/support/v4/view/bp;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Landroid/support/v4/view/bs;

    invoke-direct {v0}, Landroid/support/v4/view/bs;-><init>()V

    sput-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewGroup;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 119
    sget-object v0, Landroid/support/v4/view/bo;->a:Landroid/support/v4/view/br;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/br;->a(Landroid/view/ViewGroup;Z)V

    .line 120
    return-void
.end method
