.class Lme/timos/a/a/g;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lme/timos/a/a/f;

.field private final synthetic b:Lme/timos/a/a/i;

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lme/timos/a/a/f;Lme/timos/a/a/i;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lme/timos/a/a/g;->a:Lme/timos/a/a/f;

    iput-object p2, p0, Lme/timos/a/a/g;->b:Lme/timos/a/a/i;

    iput-object p3, p0, Lme/timos/a/a/g;->c:Ljava/util/List;

    iput-object p4, p0, Lme/timos/a/a/g;->d:Ljava/util/List;

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 965
    iget-object v2, p0, Lme/timos/a/a/g;->b:Lme/timos/a/a/i;

    iget-object v0, p0, Lme/timos/a/a/g;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/timos/a/a/p;

    iget-object v1, p0, Lme/timos/a/a/g;->d:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/timos/a/a/n;

    invoke-interface {v2, v0, v1}, Lme/timos/a/a/i;->a(Lme/timos/a/a/p;Lme/timos/a/a/n;)V

    .line 966
    return-void
.end method
