.class Leu/chainfire/supersu/PromptActivity$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leu/chainfire/supersu/PromptActivity$4;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/PromptActivity$4;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->c(Leu/chainfire/supersu/PromptActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->d(Leu/chainfire/supersu/PromptActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Leu/chainfire/supersu/PromptActivity;->a(Leu/chainfire/supersu/PromptActivity;I)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->e(Leu/chainfire/supersu/PromptActivity;)Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "eu.chainfire.supersu.extra.saved_counter"

    iget-object v4, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v4}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v4

    invoke-static {v4}, Leu/chainfire/supersu/PromptActivity;->d(Leu/chainfire/supersu/PromptActivity;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->d(Leu/chainfire/supersu/PromptActivity;)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v3}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/supersu/PromptActivity;->f(Leu/chainfire/supersu/PromptActivity;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v3, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    if-lez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3a

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v3}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/supersu/PromptActivity;->g(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->d(Leu/chainfire/supersu/PromptActivity;)I

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Leu/chainfire/supersu/PromptActivity;->b(Leu/chainfire/supersu/PromptActivity;Z)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v3

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->h(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->a(Leu/chainfire/supersu/PromptActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Leu/chainfire/supersu/PromptActivity;->c(Leu/chainfire/supersu/PromptActivity;Z)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/supersu/PromptActivity;->h(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;

    move-result-object v1

    iget-boolean v1, v1, Leu/chainfire/supersu/Settings$App;->a:Z

    invoke-static {v0, v1}, Leu/chainfire/supersu/PromptActivity;->d(Leu/chainfire/supersu/PromptActivity;Z)V

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->h(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    iget-boolean v0, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->h(Leu/chainfire/supersu/PromptActivity;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->f()V

    :cond_2
    iget-object v0, p0, Leu/chainfire/supersu/PromptActivity$4$1;->a:Leu/chainfire/supersu/PromptActivity$4;

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity$4;->a(Leu/chainfire/supersu/PromptActivity$4;)Leu/chainfire/supersu/PromptActivity;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/PromptActivity;->i(Leu/chainfire/supersu/PromptActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
