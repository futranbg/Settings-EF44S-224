.class public final Lcom/koushikdutta/async/http/c/t;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"


# instance fields
.field private final a:Ljava/net/URI;

.field private final b:Lcom/koushikdutta/async/http/c/p;

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:Ljava/util/Date;

.field private f:J

.field private g:J

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/util/Set;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/koushikdutta/async/http/c/p;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v2, p0, Lcom/koushikdutta/async/http/c/t;->j:I

    .line 89
    iput v2, p0, Lcom/koushikdutta/async/http/c/t;->k:I

    .line 101
    iput v2, p0, Lcom/koushikdutta/async/http/c/t;->o:I

    .line 104
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/c/t;->p:Ljava/util/Set;

    .line 108
    iput v2, p0, Lcom/koushikdutta/async/http/c/t;->s:I

    .line 114
    iput-object p1, p0, Lcom/koushikdutta/async/http/c/t;->a:Ljava/net/URI;

    .line 115
    iput-object p2, p0, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    .line 117
    new-instance v3, Lcom/koushikdutta/async/http/c/u;

    invoke-direct {v3, p0}, Lcom/koushikdutta/async/http/c/u;-><init>(Lcom/koushikdutta/async/http/c/t;)V

    move v0, v1

    .line 135
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/c/p;->d()I

    move-result v2

    if-ge v0, v2, :cond_11

    .line 136
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/c/p;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/c/p;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    const-string v5, "Cache-Control"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    invoke-static {v4, v3}, Lcom/koushikdutta/async/http/c/i;->a(Ljava/lang/String;Lcom/koushikdutta/async/http/c/j;)V

    .line 135
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const-string v5, "Date"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 141
    invoke-static {v4}, Lcom/koushikdutta/async/http/c/k;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/c/t;->c:Ljava/util/Date;

    goto :goto_1

    .line 142
    :cond_2
    const-string v5, "Expires"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 143
    invoke-static {v4}, Lcom/koushikdutta/async/http/c/k;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/c/t;->e:Ljava/util/Date;

    goto :goto_1

    .line 144
    :cond_3
    const-string v5, "Last-Modified"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    invoke-static {v4}, Lcom/koushikdutta/async/http/c/k;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/async/http/c/t;->d:Ljava/util/Date;

    goto :goto_1

    .line 146
    :cond_4
    const-string v5, "ETag"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 147
    iput-object v4, p0, Lcom/koushikdutta/async/http/c/t;->n:Ljava/lang/String;

    goto :goto_1

    .line 148
    :cond_5
    const-string v5, "Pragma"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 149
    const-string v2, "no-cache"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/koushikdutta/async/http/c/t;->h:Z

    goto :goto_1

    .line 152
    :cond_6
    const-string v5, "Age"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 153
    invoke-static {v4}, Lcom/koushikdutta/async/http/c/i;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/koushikdutta/async/http/c/t;->o:I

    goto :goto_1

    .line 154
    :cond_7
    const-string v5, "Vary"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 156
    iget-object v2, p0, Lcom/koushikdutta/async/http/c/t;->p:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 157
    new-instance v2, Ljava/util/TreeSet;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v2, p0, Lcom/koushikdutta/async/http/c/t;->p:Ljava/util/Set;

    .line 159
    :cond_8
    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v2

    .line 160
    iget-object v7, p0, Lcom/koushikdutta/async/http/c/t;->p:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 162
    :cond_9
    const-string v5, "Content-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 163
    iput-object v4, p0, Lcom/koushikdutta/async/http/c/t;->q:Ljava/lang/String;

    goto/16 :goto_1

    .line 164
    :cond_a
    const-string v5, "Transfer-Encoding"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 165
    iput-object v4, p0, Lcom/koushikdutta/async/http/c/t;->r:Ljava/lang/String;

    goto/16 :goto_1

    .line 166
    :cond_b
    const-string v5, "Content-Length"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 168
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/koushikdutta/async/http/c/t;->s:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 169
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 171
    :cond_c
    const-string v5, "Connection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 172
    iput-object v4, p0, Lcom/koushikdutta/async/http/c/t;->t:Ljava/lang/String;

    goto/16 :goto_1

    .line 173
    :cond_d
    const-string v5, "Proxy-Authenticate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 174
    iput-object v4, p0, Lcom/koushikdutta/async/http/c/t;->u:Ljava/lang/String;

    goto/16 :goto_1

    .line 175
    :cond_e
    const-string v5, "WWW-Authenticate"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 176
    iput-object v4, p0, Lcom/koushikdutta/async/http/c/t;->v:Ljava/lang/String;

    goto/16 :goto_1

    .line 177
    :cond_f
    const-string v5, "X-Android-Sent-Millis"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 178
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/koushikdutta/async/http/c/t;->f:J

    goto/16 :goto_1

    .line 179
    :cond_10
    const-string v5, "X-Android-Received-Millis"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/koushikdutta/async/http/c/t;->g:J

    goto/16 :goto_1

    .line 183
    :cond_11
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/t;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/koushikdutta/async/http/c/t;->j:I

    return p1
.end method

.method private a(J)J
    .locals 6
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 286
    iget-object v2, p0, Lcom/koushikdutta/async/http/c/t;->c:Ljava/util/Date;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/koushikdutta/async/http/c/t;->g:J

    iget-object v4, p0, Lcom/koushikdutta/async/http/c/t;->c:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 289
    :cond_0
    iget v2, p0, Lcom/koushikdutta/async/http/c/t;->o:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/koushikdutta/async/http/c/t;->o:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 292
    :cond_1
    iget-wide v2, p0, Lcom/koushikdutta/async/http/c/t;->g:J

    iget-wide v4, p0, Lcom/koushikdutta/async/http/c/t;->f:J

    sub-long/2addr v2, v4

    .line 293
    iget-wide v4, p0, Lcom/koushikdutta/async/http/c/t;->g:J

    sub-long v4, p1, v4

    .line 294
    add-long/2addr v0, v2

    add-long/2addr v0, v4

    return-wide v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/c/t;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/c/t;->h:Z

    return p1
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 509
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/c/t;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/koushikdutta/async/http/c/t;->k:I

    return p1
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/c/t;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/c/t;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/c/t;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/c/t;->l:Z

    return p1
.end method

.method private d()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 302
    iget v0, p0, Lcom/koushikdutta/async/http/c/t;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 303
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Lcom/koushikdutta/async/http/c/t;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 319
    :cond_0
    :goto_0
    return-wide v2

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->e:Ljava/util/Date;

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->c:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 306
    :goto_1
    iget-object v4, p0, Lcom/koushikdutta/async/http/c/t;->e:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    .line 307
    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    :goto_2
    move-wide v2, v0

    goto :goto_0

    .line 305
    :cond_2
    iget-wide v0, p0, Lcom/koushikdutta/async/http/c/t;->g:J

    goto :goto_1

    :cond_3
    move-wide v0, v2

    .line 307
    goto :goto_2

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->d:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->c:Ljava/util/Date;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 316
    :goto_3
    iget-object v4, p0, Lcom/koushikdutta/async/http/c/t;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 317
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0xa

    div-long v2, v0, v2

    goto :goto_0

    .line 315
    :cond_5
    iget-wide v0, p0, Lcom/koushikdutta/async/http/c/t;->f:J

    goto :goto_3
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/c/t;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/c/t;->m:Z

    return p1
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Lcom/koushikdutta/async/http/c/t;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->e:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/koushikdutta/async/http/c/p;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    return-object v0
.end method

.method public a(JLcom/koushikdutta/async/http/c/r;)Lcom/koushikdutta/async/http/c/v;
    .locals 11
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, -0x1

    .line 398
    invoke-virtual {p0, p3}, Lcom/koushikdutta/async/http/c/t;->a(Lcom/koushikdutta/async/http/c/r;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    sget-object v0, Lcom/koushikdutta/async/http/c/v;->c:Lcom/koushikdutta/async/http/c/v;

    .line 448
    :goto_0
    return-object v0

    .line 402
    :cond_0
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/c/r;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/c/r;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    :cond_1
    sget-object v0, Lcom/koushikdutta/async/http/c/v;->c:Lcom/koushikdutta/async/http/c/v;

    goto :goto_0

    .line 406
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/http/c/t;->a(J)J

    move-result-wide v6

    .line 407
    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/t;->d()J

    move-result-wide v0

    .line 409
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/c/r;->d()I

    move-result v2

    if-eq v2, v10, :cond_3

    .line 410
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/c/r;->d()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 415
    :cond_3
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/c/r;->f()I

    move-result v2

    if-eq v2, v10, :cond_c

    .line 416
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/c/r;->f()I

    move-result v3

    int-to-long v8, v3

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 420
    :goto_1
    iget-boolean v8, p0, Lcom/koushikdutta/async/http/c/t;->m:Z

    if-nez v8, :cond_4

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/c/r;->e()I

    move-result v8

    if-eq v8, v10, :cond_4

    .line 421
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Lcom/koushikdutta/async/http/c/r;->e()I

    move-result v5

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 424
    :cond_4
    iget-boolean v8, p0, Lcom/koushikdutta/async/http/c/t;->h:Z

    if-nez v8, :cond_7

    add-long v8, v6, v2

    add-long/2addr v4, v0

    cmp-long v4, v8, v4

    if-gez v4, :cond_7

    .line 425
    add-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-ltz v0, :cond_5

    .line 426
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v1, "Warning"

    const-string v2, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_5
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v6, v0

    if-lez v0, :cond_6

    invoke-direct {p0}, Lcom/koushikdutta/async/http/c/t;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 433
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v1, "Warning"

    const-string v2, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_6
    sget-object v0, Lcom/koushikdutta/async/http/c/v;->a:Lcom/koushikdutta/async/http/c/v;

    goto/16 :goto_0

    .line 438
    :cond_7
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->n:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 439
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->n:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/http/c/r;->b(Ljava/lang/String;)V

    .line 448
    :cond_8
    :goto_2
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/c/r;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/koushikdutta/async/http/c/v;->b:Lcom/koushikdutta/async/http/c/v;

    goto/16 :goto_0

    .line 441
    :cond_9
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->d:Ljava/util/Date;

    if-eqz v0, :cond_a

    .line 442
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->d:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/http/c/r;->a(Ljava/util/Date;)V

    goto :goto_2

    .line 443
    :cond_a
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->c:Ljava/util/Date;

    if-eqz v0, :cond_8

    .line 444
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->c:Ljava/util/Date;

    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/http/c/r;->a(Ljava/util/Date;)V

    goto :goto_2

    .line 448
    :cond_b
    sget-object v0, Lcom/koushikdutta/async/http/c/v;->c:Lcom/koushikdutta/async/http/c/v;

    goto/16 :goto_0

    :cond_c
    move-wide v2, v4

    goto :goto_1
.end method

.method public a(JJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 275
    iput-wide p1, p0, Lcom/koushikdutta/async/http/c/t;->f:J

    .line 276
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v1, "X-Android-Sent-Millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-wide p3, p0, Lcom/koushikdutta/async/http/c/t;->g:J

    .line 278
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    const-string v1, "X-Android-Received-Millis"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/c/r;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 340
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/p;->c()I

    move-result v1

    .line 341
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x19a

    if-eq v1, v2, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/c/r;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/koushikdutta/async/http/c/t;->l:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/koushikdutta/async/http/c/t;->m:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/koushikdutta/async/http/c/t;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 360
    :cond_2
    iget-boolean v1, p0, Lcom/koushikdutta/async/http/c/t;->i:Z

    if-nez v1, :cond_0

    .line 364
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/koushikdutta/async/http/c/t;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 458
    iget-object v1, p1, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/p;->c()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/http/c/t;->d:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/koushikdutta/async/http/c/t;->d:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/koushikdutta/async/http/c/t;->d:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/koushikdutta/async/http/c/t;->d:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 473
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->p:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/koushikdutta/async/http/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/koushikdutta/async/http/c/t;)Lcom/koushikdutta/async/http/c/t;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 481
    new-instance v2, Lcom/koushikdutta/async/http/c/p;

    invoke-direct {v2}, Lcom/koushikdutta/async/http/c/p;-><init>()V

    move v0, v1

    .line 483
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/c/p;->d()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 484
    iget-object v3, p0, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v3, v0}, Lcom/koushikdutta/async/http/c/p;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 485
    iget-object v4, p0, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/c/p;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 486
    const-string v5, "Warning"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_1
    invoke-static {v3}, Lcom/koushikdutta/async/http/c/t;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v5, v3}, Lcom/koushikdutta/async/http/c/p;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 490
    :cond_2
    invoke-virtual {v2, v3, v4}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 494
    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/p;->d()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 495
    iget-object v0, p1, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/c/p;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-static {v0}, Lcom/koushikdutta/async/http/c/t;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 497
    iget-object v3, p1, Lcom/koushikdutta/async/http/c/t;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v3, v1}, Lcom/koushikdutta/async/http/c/p;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 501
    :cond_5
    new-instance v0, Lcom/koushikdutta/async/http/c/t;

    iget-object v1, p0, Lcom/koushikdutta/async/http/c/t;->a:Ljava/net/URI;

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/http/c/t;-><init>(Ljava/net/URI;Lcom/koushikdutta/async/http/c/p;)V

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/koushikdutta/async/http/c/t;->p:Ljava/util/Set;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/koushikdutta/async/http/c/t;->s:I

    return v0
.end method
