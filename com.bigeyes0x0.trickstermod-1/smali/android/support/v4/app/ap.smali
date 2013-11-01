.class public abstract Landroid/support/v4/app/ap;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field d:Landroid/support/v4/app/ai;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/ap;->g:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ai;)V
    .locals 1
    .parameter

    .prologue
    .line 614
    iget-object v0, p0, Landroid/support/v4/app/ap;->d:Landroid/support/v4/app/ai;

    if-eq v0, p1, :cond_0

    .line 615
    iput-object p1, p0, Landroid/support/v4/app/ap;->d:Landroid/support/v4/app/ai;

    .line 616
    iget-object v0, p0, Landroid/support/v4/app/ap;->d:Landroid/support/v4/app/ai;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Landroid/support/v4/app/ap;->d:Landroid/support/v4/app/ai;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/ai;->a(Landroid/support/v4/app/ap;)Landroid/support/v4/app/ai;

    .line 620
    :cond_0
    return-void
.end method
