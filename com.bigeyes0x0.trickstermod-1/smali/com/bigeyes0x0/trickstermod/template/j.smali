.class public Lcom/bigeyes0x0/trickstermod/template/j;
.super Ljava/lang/Object;
.source "SettingProfile.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/j;->a:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p2}, Lcom/bigeyes0x0/trickstermod/template/j;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/j;->b:[Ljava/lang/String;

    .line 91
    iput-boolean p3, p0, Lcom/bigeyes0x0/trickstermod/template/j;->c:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/j;->a:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/template/j;->b:[Ljava/lang/String;

    .line 97
    iput-boolean p3, p0, Lcom/bigeyes0x0/trickstermod/template/j;->c:Z

    .line 98
    return-void
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/j;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/template/j;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/j;->a:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/bigeyes0x0/trickstermod/template/j;->c:Z

    .line 118
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/j;->b:[Ljava/lang/String;

    .line 126
    return-void
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    sget-object v0, Lcom/bigeyes0x0/trickstermod/k;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/j;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/template/j;->c:Z

    return v0
.end method
