.class Lcom/bigeyes0x0/trickstermod/template/o;
.super Ljava/lang/Object;
.source "SettingSwitch.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bigeyes0x0/trickstermod/template/n;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bigeyes0x0/trickstermod/template/n;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/bigeyes0x0/trickstermod/template/o;->a:Lcom/bigeyes0x0/trickstermod/template/n;

    iput-object p2, p0, Lcom/bigeyes0x0/trickstermod/template/o;->b:Ljava/lang/String;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/template/o;->a:Lcom/bigeyes0x0/trickstermod/template/n;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/template/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bigeyes0x0/trickstermod/template/n;->setValue(Ljava/lang/String;)V

    .line 202
    return-void
.end method
