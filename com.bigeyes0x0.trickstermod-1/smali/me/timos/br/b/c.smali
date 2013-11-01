.class public Lme/timos/br/b/c;
.super Ljava/lang/Object;
.source "LogcatLogger.java"

# interfaces
.implements Lme/timos/br/b/d;


# static fields
.field private static synthetic c:[I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lme/timos/br/b/c;->a:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lme/timos/br/b/c;->b:Z

    .line 14
    return-void
.end method

.method static synthetic c()[I
    .locals 3

    .prologue
    .line 6
    sget-object v0, Lme/timos/br/b/c;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lme/timos/br/a/a;->values()[Lme/timos/br/a/a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lme/timos/br/a/a;->b:Lme/timos/br/a/a;

    invoke-virtual {v1}, Lme/timos/br/a/a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lme/timos/br/a/a;->e:Lme/timos/br/a/a;

    invoke-virtual {v1}, Lme/timos/br/a/a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lme/timos/br/a/a;->c:Lme/timos/br/a/a;

    invoke-virtual {v1}, Lme/timos/br/a/a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lme/timos/br/a/a;->a:Lme/timos/br/a/a;

    invoke-virtual {v1}, Lme/timos/br/a/a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lme/timos/br/a/a;->d:Lme/timos/br/a/a;

    invoke-virtual {v1}, Lme/timos/br/a/a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lme/timos/br/b/c;->c:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 19
    return-void
.end method

.method public a(Lme/timos/br/a/a;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lme/timos/br/b/c;->b:Z

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {}, Lme/timos/br/b/c;->c()[I

    move-result-object v0

    invoke-virtual {p1}, Lme/timos/br/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lme/timos/br/b/c;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v0, p0, Lme/timos/br/b/c;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v0, p0, Lme/timos/br/b/c;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :pswitch_3
    iget-object v0, p0, Lme/timos/br/b/c;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 46
    :pswitch_4
    iget-object v0, p0, Lme/timos/br/b/c;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method
