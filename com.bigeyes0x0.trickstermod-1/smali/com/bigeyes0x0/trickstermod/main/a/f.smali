.class Lcom/bigeyes0x0/trickstermod/main/a/f;
.super Ljava/lang/Object;
.source "SettingsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/main/a/d;

.field private final synthetic b:Landroid/app/ActivityManager$RunningAppProcessInfo;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/main/a/d;Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/main/a/f;->a:Lcom/bigeyes0x0/trickstermod/main/a/d;

    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/main/a/f;->b:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 306
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kill "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bigeyes0x0/trickstermod/main/a/f;->b:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v4, v4, v0}, Lcom/bigeyes0x0/trickstermod/k;->a(Ljava/lang/String;Ljava/lang/Integer;[Ljava/lang/String;)Ljava/lang/String;

    .line 307
    return-void
.end method
