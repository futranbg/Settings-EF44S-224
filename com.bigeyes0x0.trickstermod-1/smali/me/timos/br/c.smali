.class Lme/timos/br/c;
.super Ljava/lang/Object;
.source "BR.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lme/timos/br/b;

.field private final synthetic b:Ljava/lang/Process;


# direct methods
.method constructor <init>(Lme/timos/br/b;Ljava/lang/Process;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lme/timos/br/c;->a:Lme/timos/br/b;

    iput-object p2, p0, Lme/timos/br/c;->b:Ljava/lang/Process;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lme/timos/br/c;->b:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 74
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 75
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-gez v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method
