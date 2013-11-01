.class public final Lcom/koushikdutta/async/http/c/r;
.super Ljava/lang/Object;
.source "RequestHeaders.java"


# instance fields
.field private final a:Ljava/net/URI;

.field private final b:Lcom/koushikdutta/async/http/c/p;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/koushikdutta/async/http/c/p;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v0, -0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/koushikdutta/async/http/c/r;->d:I

    .line 34
    iput v0, p0, Lcom/koushikdutta/async/http/c/r;->e:I

    .line 35
    iput v0, p0, Lcom/koushikdutta/async/http/c/r;->f:I

    .line 53
    iput v0, p0, Lcom/koushikdutta/async/http/c/r;->i:I

    .line 65
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/r;->a:Ljava/net/URI;

    .line 66
    iput-object p2, p0, Lcom/koushikdutta/async/http/c/r;->b:Lcom/koushikdutta/async/http/c/p;

    .line 68
    new-instance v1, Lcom/koushikdutta/async/http/c/s;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/c/s;-><init>(Lcom/koushikdutta/async/http/c/r;)V

    .line 84
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/c/p;->d()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 85
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/c/p;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/c/p;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    const-string v4, "Cache-Control"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-static {v3, v1}, Lcom/koushikdutta/async/http/c/i;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/c/j;)V

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    const-string v4, "Pragma"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const-string v2, "no-cache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    iput-boolean v5, p0, Lcom/koushikdutta/async/http/c/r;->c:Z

    goto :goto_1

    .line 93
    :cond_2
    const-string v4, "If-None-Match"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 94
    iput-object v3, p0, Lcom/koushikdutta/async/http/c/r;->q:Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_3
    const-string v4, "If-Modified-Since"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 96
    iput-object v3, p0, Lcom/koushikdutta/async/http/c/r;->p:Ljava/lang/String;

    goto :goto_1

    .line 97
    :cond_4
    const-string v4, "Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 98
    iput-boolean v5, p0, Lcom/koushikdutta/async/http/c/r;->h:Z

    goto :goto_1

    .line 99
    :cond_5
    const-string v4, "Content-Length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 101
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/koushikdutta/async/http/c/r;->i:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 102
    :catch_0
    move-exception v2

    goto :goto_1

    .line 104
    :cond_6
    const-string v4, "Transfer-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 105
    iput-object v3, p0, Lcom/koushikdutta/async/http/c/r;->j:Ljava/lang/String;

    goto :goto_1

    .line 106
    :cond_7
    const-string v4, "User-Agent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 107
    iput-object v3, p0, Lcom/koushikdutta/async/http/c/r;->k:Ljava/lang/String;

    goto :goto_1

    .line 108
    :cond_8
    const-string v4, "Host"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 109
    iput-object v3, p0, Lcom/koushikdutta/async/http/c/r;->l:Ljava/lang/String;

    goto :goto_1

    .line 110
    :cond_9
    const-string v4, "Connection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 111
    iput-object v3, p0, Lcom/koushikdutta/async/http/c/r;->m:Ljava/lang/String;

    goto :goto_1

    .line 112
    :cond_a
    const-string v4, "Accept-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 113
    iput-object v3, p0, Lcom/koushikdutta/async/http/c/r;->n:Ljava/lang/String;

    goto :goto_1

    .line 114
    :cond_b
    const-string v4, "Content-Type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 115
    iput-object v3, p0, Lcom/koushikdutta/async/http/c/r;->o:Ljava/lang/String;

    goto/16 :goto_1

    .line 116
    :cond_c
    const-string v4, "Proxy-Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iput-object v3, p0, Lcom/koushikdutta/async/http/c/r;->r:Ljava/lang/String;

    goto/16 :goto_1

    .line 120
    :cond_d
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/koushikdutta/async/http/c/r;->d:I

    return p1
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/r;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/c/r;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/c/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/koushikdutta/async/http/c/r;->e:I

    return p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/c/r;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/c/r;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/c/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/koushikdutta/async/http/c/r;->f:I

    return p1
.end method


# virtual methods
.method public a()Ljava/net/URI;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->a:Ljava/net/URI;

    return-object v0
.end method

.method public a(I)V
    .locals 3
    .parameter

    .prologue
    .line 211
    iget v0, p0, Lcom/koushikdutta/async/http/c/r;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/p;->c(Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v1, "Content-Length"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput p1, p0, Lcom/koushikdutta/async/http/c/r;->i:I

    .line 216
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 251
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/p;->c(Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/r;->o:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 3
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/p;->c(Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-static {p1}, Lcom/koushikdutta/async/http/c/k;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/r;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iput-object v0, p0, Lcom/koushikdutta/async/http/c/r;->p:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
    .parameter

    .prologue
    .line 285
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 287
    const-string v3, "Cookie"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Cookie2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    :cond_1
    iget-object v3, p0, Lcom/koushikdutta/async/http/c/r;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v3, v1, v0}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 291
    :cond_2
    return-void
.end method

.method public b()Lcom/koushikdutta/async/http/c/p;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->b:Lcom/koushikdutta/async/http/c/p;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/p;->c(Ljava/lang/String;)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/r;->q:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/c/r;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/koushikdutta/async/http/c/r;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/koushikdutta/async/http/c/r;->e:I

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/koushikdutta/async/http/c/r;->f:I

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/c/r;->h:Z

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/koushikdutta/async/http/c/r;->i:I

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->o:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/c/r;->q:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
