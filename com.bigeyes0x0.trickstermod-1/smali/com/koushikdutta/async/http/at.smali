.class final Lcom/koushikdutta/async/http/at;
.super Ljava/lang/Object;
.source "ResponseCacheMiddleware.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/koushikdutta/async/http/c/p;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/koushikdutta/async/http/c/p;

.field private final e:Ljava/lang/String;

.field private final f:[Ljava/security/cert/Certificate;

.field private final g:[Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 777
    :try_start_0
    new-instance v2, Lcom/koushikdutta/async/http/c/w;

    sget-object v1, Lcom/koushikdutta/async/http/c/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v1}, Lcom/koushikdutta/async/http/c/w;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 778
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/at;->a:Ljava/lang/String;

    .line 779
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/at;->c:Ljava/lang/String;

    .line 780
    new-instance v1, Lcom/koushikdutta/async/http/c/p;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/c/p;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/at;->b:Lcom/koushikdutta/async/http/c/p;

    .line 781
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/w;->b()I

    move-result v3

    move v1, v0

    .line 782
    :goto_0
    if-ge v1, v3, :cond_0

    .line 783
    iget-object v4, p0, Lcom/koushikdutta/async/http/at;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;)V

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 786
    :cond_0
    new-instance v1, Lcom/koushikdutta/async/http/c/p;

    invoke-direct {v1}, Lcom/koushikdutta/async/http/c/p;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/http/at;->d:Lcom/koushikdutta/async/http/c/p;

    .line 787
    iget-object v1, p0, Lcom/koushikdutta/async/http/at;->d:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/koushikdutta/async/http/c/p;->a(Ljava/lang/String;)V

    .line 788
    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/w;->b()I

    move-result v1

    .line 789
    :goto_1
    if-ge v0, v1, :cond_1

    .line 790
    iget-object v3, p0, Lcom/koushikdutta/async/http/at;->d:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/c/w;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/c/p;->b(Ljava/lang/String;)V

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 802
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/at;->e:Ljava/lang/String;

    .line 803
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/at;->f:[Ljava/security/cert/Certificate;

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/http/at;->g:[Ljava/security/cert/Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 809
    return-void

    .line 807
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/koushikdutta/async/http/c/p;Lcom/koushikdutta/async/http/m;Lcom/koushikdutta/async/http/c/t;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/at;->a:Ljava/lang/String;

    .line 813
    iput-object p2, p0, Lcom/koushikdutta/async/http/at;->b:Lcom/koushikdutta/async/http/c/p;

    .line 814
    invoke-virtual {p3}, Lcom/koushikdutta/async/http/m;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/at;->c:Ljava/lang/String;

    .line 815
    invoke-virtual {p4}, Lcom/koushikdutta/async/http/c/t;->a()Lcom/koushikdutta/async/http/c/p;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/at;->d:Lcom/koushikdutta/async/http/c/p;

    .line 828
    iput-object v1, p0, Lcom/koushikdutta/async/http/at;->e:Ljava/lang/String;

    .line 829
    iput-object v1, p0, Lcom/koushikdutta/async/http/at;->f:[Ljava/security/cert/Certificate;

    .line 830
    iput-object v1, p0, Lcom/koushikdutta/async/http/at;->g:[Ljava/security/cert/Certificate;

    .line 832
    return-void
.end method

.method private a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 887
    if-nez p2, :cond_1

    .line 888
    const-string v0, "-1\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 901
    :cond_0
    return-void

    .line 892
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 893
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 894
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    .line 895
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    .line 899
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/koushikdutta/async/http/at;->a:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/at;)Z
    .locals 1
    .parameter

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/koushikdutta/async/http/at;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/at;)Lcom/koushikdutta/async/http/c/p;
    .locals 1
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lcom/koushikdutta/async/http/at;->d:Lcom/koushikdutta/async/http/c/p;

    return-object v0
.end method

.method static synthetic c(Lcom/koushikdutta/async/http/at;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lcom/koushikdutta/async/http/at;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;
    .locals 1
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lcom/koushikdutta/async/http/at;->f:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic e(Lcom/koushikdutta/async/http/at;)[Ljava/security/cert/Certificate;
    .locals 1
    .parameter

    .prologue
    .line 720
    iget-object v0, p0, Lcom/koushikdutta/async/http/at;->g:[Ljava/security/cert/Certificate;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/http/c/e;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0xa

    .line 835
    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/c/e;->a(I)Ljava/io/OutputStream;

    move-result-object v0

    .line 836
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Lcom/koushikdutta/async/http/c/a;->b:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/at;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/at;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/c/p;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v0, v1

    .line 841
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/at;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/c/p;->d()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/koushikdutta/async/http/at;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/c/p;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/koushikdutta/async/http/at;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/http/c/p;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/at;->d:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/c/p;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/at;->d:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/c/p;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 848
    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/at;->d:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/c/p;->d()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/koushikdutta/async/http/at;->d:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v3, v1}, Lcom/koushikdutta/async/http/c/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/koushikdutta/async/http/at;->d:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v3, v1}, Lcom/koushikdutta/async/http/c/p;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 848
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 853
    :cond_1
    invoke-direct {p0}, Lcom/koushikdutta/async/http/at;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 854
    invoke-virtual {v2, v5}, Ljava/io/Writer;->write(I)V

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/async/http/at;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 856
    iget-object v0, p0, Lcom/koushikdutta/async/http/at;->f:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lcom/koushikdutta/async/http/at;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 857
    iget-object v0, p0, Lcom/koushikdutta/async/http/at;->g:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v0}, Lcom/koushikdutta/async/http/at;->a(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    .line 859
    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 860
    return-void
.end method

.method public a(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 905
    iget-object v0, p0, Lcom/koushikdutta/async/http/at;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/http/at;->c:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/koushikdutta/async/http/c/t;

    iget-object v1, p0, Lcom/koushikdutta/async/http/at;->d:Lcom/koushikdutta/async/http/c/p;

    invoke-direct {v0, p1, v1}, Lcom/koushikdutta/async/http/c/t;-><init>(Ljava/net/URI;Lcom/koushikdutta/async/http/c/p;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/at;->b:Lcom/koushikdutta/async/http/c/p;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/c/p;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/koushikdutta/async/http/c/t;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
