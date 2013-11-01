.class Lcom/bigeyes0x0/trickstermod/main/e;
.super Ljava/lang/Object;
.source "ActivityTricksterMod.java"

# interfaces
.implements Lcom/koushikdutta/async/b/g;


# instance fields
.field private a:Lcom/bigeyes0x0/trickstermod/TrApp;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/e;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/bigeyes0x0/trickstermod/main/e;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/main/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bigeyes0x0/trickstermod/main/e;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 92
    if-eqz p1, :cond_1

    .line 93
    sget-object v0, Lcom/bigeyes0x0/trickstermod/a;->v:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "No internet permission"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 100
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 101
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/e;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 102
    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->r:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 101
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 103
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/e;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    sget-object v2, Lcom/bigeyes0x0/trickstermod/a;->B:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 105
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 106
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 107
    sget-object v3, Lcom/bigeyes0x0/trickstermod/a;->C:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 108
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/bigeyes0x0/trickstermod/a;->q:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/bigeyes0x0/trickstermod/a;->A:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 110
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 111
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/main/e;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 113
    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->e()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 113
    if-nez v0, :cond_0

    .line 114
    const-string v0, "BiChom"

    invoke-static {v0}, Lme/timos/br/d;->a(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/e;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    sget-object v1, Lcom/bigeyes0x0/trickstermod/a;->u:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/TrApp;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
