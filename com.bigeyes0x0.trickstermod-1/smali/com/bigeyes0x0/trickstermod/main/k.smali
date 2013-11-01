.class Lcom/bigeyes0x0/trickstermod/main/k;
.super Ljava/lang/Object;
.source "FragmentSysctlEditorMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/j;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/k;->a:Lcom/bigeyes0x0/trickstermod/main/j;

    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bigeyes0x0/trickstermod/main/k;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bigeyes0x0/trickstermod/main/k;->d:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bigeyes0x0/trickstermod/main/k;)Lcom/bigeyes0x0/trickstermod/main/j;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/k;->a:Lcom/bigeyes0x0/trickstermod/main/j;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/k;->a:Lcom/bigeyes0x0/trickstermod/main/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "if [ -x busybox ]; then"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "./"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/main/k;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "./"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bigeyes0x0/trickstermod/main/k;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "else"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/main/k;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/bigeyes0x0/trickstermod/main/k;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "fi"

    aput-object v4, v2, v3

    .line 92
    invoke-static {v0, v1, v2}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/k;->a:Lcom/bigeyes0x0/trickstermod/main/j;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->a(Lcom/bigeyes0x0/trickstermod/main/j;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/k;->a:Lcom/bigeyes0x0/trickstermod/main/j;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->b(Lcom/bigeyes0x0/trickstermod/main/j;)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/k;->a:Lcom/bigeyes0x0/trickstermod/main/j;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->a(Lcom/bigeyes0x0/trickstermod/main/j;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/k;->a:Lcom/bigeyes0x0/trickstermod/main/j;

    invoke-static {v0}, Lcom/bigeyes0x0/trickstermod/main/j;->c(Lcom/bigeyes0x0/trickstermod/main/j;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v2, Lcom/bigeyes0x0/trickstermod/main/l;

    invoke-direct {v2, p0, v1}, Lcom/bigeyes0x0/trickstermod/main/l;-><init>(Lcom/bigeyes0x0/trickstermod/main/k;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 109
    :cond_0
    return-void
.end method
