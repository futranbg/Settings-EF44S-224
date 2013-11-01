.class Lme/timos/a/a/e;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lme/timos/a/a/d;

.field private final synthetic b:Lme/timos/a/a/m;

.field private final synthetic c:Lme/timos/a/a/n;

.field private final synthetic d:Lme/timos/a/a/o;


# direct methods
.method constructor <init>(Lme/timos/a/a/d;Lme/timos/a/a/m;Lme/timos/a/a/n;Lme/timos/a/a/o;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lme/timos/a/a/e;->a:Lme/timos/a/a/d;

    iput-object p2, p0, Lme/timos/a/a/e;->b:Lme/timos/a/a/m;

    iput-object p3, p0, Lme/timos/a/a/e;->c:Lme/timos/a/a/n;

    iput-object p4, p0, Lme/timos/a/a/e;->d:Lme/timos/a/a/o;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 630
    iget-object v0, p0, Lme/timos/a/a/e;->b:Lme/timos/a/a/m;

    iget-object v1, p0, Lme/timos/a/a/e;->c:Lme/timos/a/a/n;

    iget-object v2, p0, Lme/timos/a/a/e;->d:Lme/timos/a/a/o;

    invoke-interface {v0, v1, v2}, Lme/timos/a/a/m;->a(Lme/timos/a/a/n;Lme/timos/a/a/o;)V

    .line 631
    return-void
.end method
