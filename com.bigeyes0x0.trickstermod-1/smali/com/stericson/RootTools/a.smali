.class public final Lcom/stericson/RootTools/a;
.super Ljava/lang/Object;
.source "RootTools.java"


# static fields
.field public static a:Z

.field public static b:Ljava/util/List;

.field public static c:Ljava/lang/String;

.field public static d:Z

.field public static e:I

.field private static f:Lcom/stericson/RootTools/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/stericson/RootTools/a;->f:Lcom/stericson/RootTools/d/c;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stericson/RootTools/a;->a:Z

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/stericson/RootTools/a;->b:Ljava/util/List;

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stericson/RootTools/a;->d:Z

    .line 99
    const/16 v0, 0x4e20

    sput v0, Lcom/stericson/RootTools/a;->e:I

    return-void
.end method

.method public static a(ZI)Lcom/stericson/RootTools/c/f;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 378
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/stericson/RootTools/a;->a(ZII)Lcom/stericson/RootTools/c/f;

    move-result-object v0

    return-object v0
.end method

.method public static a(ZII)Lcom/stericson/RootTools/c/f;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    if-eqz p0, :cond_0

    .line 362
    invoke-static {p1}, Lcom/stericson/RootTools/c/f;->a(I)Lcom/stericson/RootTools/c/f;

    move-result-object v0

    .line 364
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/stericson/RootTools/c/f;->b(I)Lcom/stericson/RootTools/c/f;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 324
    invoke-static {}, Lcom/stericson/RootTools/a;->d()Lcom/stericson/RootTools/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/d/c;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/stericson/RootTools/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    sput-object p0, Lcom/stericson/RootTools/a;->f:Lcom/stericson/RootTools/d/c;

    .line 65
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 733
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 774
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 775
    sget-boolean v0, Lcom/stericson/RootTools/a;->a:Z

    if-eqz v0, :cond_1

    .line 776
    if-nez p0, :cond_0

    .line 777
    const-string p0, "RootTools v3.3"

    .line 780
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 793
    :cond_1
    :goto_0
    return-void

    .line 782
    :pswitch_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 785
    :pswitch_1
    invoke-static {p0, p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 788
    :pswitch_2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 780
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 147
    if-eqz p0, :cond_0

    .line 148
    invoke-static {}, Lcom/stericson/RootTools/c/f;->c()V

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/stericson/RootTools/c/f;->d()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 188
    invoke-static {}, Lcom/stericson/RootTools/a;->d()Lcom/stericson/RootTools/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/d/c;->e(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 640
    new-instance v0, Lcom/stericson/RootTools/d/b;

    invoke-direct {v0}, Lcom/stericson/RootTools/d/b;-><init>()V

    .line 642
    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-static {}, Lcom/stericson/RootTools/a;->d()Lcom/stericson/RootTools/d/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/stericson/RootTools/d/c;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Z)Lcom/stericson/RootTools/c/f;
    .locals 1
    .parameter

    .prologue
    .line 391
    const/16 v0, 0x61a8

    invoke-static {p0, v0}, Lcom/stericson/RootTools/a;->a(ZI)Lcom/stericson/RootTools/c/f;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 346
    invoke-static {}, Lcom/stericson/RootTools/a;->d()Lcom/stericson/RootTools/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/d/c;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 714
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 715
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 227
    invoke-static {}, Lcom/stericson/RootTools/a;->d()Lcom/stericson/RootTools/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/d/c;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/String;)Lcom/stericson/RootTools/a/b;
    .locals 1
    .parameter

    .prologue
    .line 300
    invoke-static {}, Lcom/stericson/RootTools/a;->d()Lcom/stericson/RootTools/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/d/c;->g(Ljava/lang/String;)Lcom/stericson/RootTools/a/b;

    move-result-object v0

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 538
    invoke-static {}, Lcom/stericson/RootTools/a;->d()Lcom/stericson/RootTools/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stericson/RootTools/d/c;->c()Z

    move-result v0

    return v0
.end method

.method private static final d()Lcom/stericson/RootTools/d/c;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/stericson/RootTools/a;->f:Lcom/stericson/RootTools/d/c;

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/stericson/RootTools/d/c;->a()V

    .line 70
    sget-object v0, Lcom/stericson/RootTools/a;->f:Lcom/stericson/RootTools/d/c;

    .line 72
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/stericson/RootTools/a;->f:Lcom/stericson/RootTools/d/c;

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 336
    invoke-static {}, Lcom/stericson/RootTools/a;->d()Lcom/stericson/RootTools/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/d/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 697
    const/4 v0, 0x3

    invoke-static {v1, p0, v0, v1}, Lcom/stericson/RootTools/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Exception;)V

    .line 698
    return-void
.end method
