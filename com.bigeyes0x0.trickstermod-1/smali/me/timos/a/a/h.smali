.class Lme/timos/a/a/h;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lme/timos/a/a/f;

.field private final synthetic b:Lme/timos/a/a/j;

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lme/timos/a/a/f;Lme/timos/a/a/j;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lme/timos/a/a/h;->a:Lme/timos/a/a/f;

    iput-object p2, p0, Lme/timos/a/a/h;->b:Lme/timos/a/a/j;

    iput-object p3, p0, Lme/timos/a/a/h;->c:Ljava/util/List;

    iput-object p4, p0, Lme/timos/a/a/h;->d:Ljava/util/List;

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 972
    iget-object v0, p0, Lme/timos/a/a/h;->b:Lme/timos/a/a/j;

    iget-object v1, p0, Lme/timos/a/a/h;->c:Ljava/util/List;

    iget-object v2, p0, Lme/timos/a/a/h;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lme/timos/a/a/j;->a(Ljava/util/List;Ljava/util/List;)V

    .line 973
    return-void
.end method
