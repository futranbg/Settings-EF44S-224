.class public Lme/timos/br/ActivityBugReport;
.super Landroid/app/Activity;
.source "ActivityBugReport.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 131
    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "android.intent.extra.STREAM"

    invoke-static {p4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    const-string v1, "message/text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-static {}, Lme/timos/br/a;->o()I

    move-result v1

    invoke-virtual {p0, v1}, Lme/timos/br/ActivityBugReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/br/ActivityBugReport;->startActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delete bug report file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lme/timos/br/ActivityBugReport;->e:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lme/timos/br/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 33
    invoke-virtual {p0}, Lme/timos/br/ActivityBugReport;->finish()V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Lme/timos/br/a;->h()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 36
    invoke-virtual {p0, v0}, Lme/timos/br/ActivityBugReport;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 38
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {}, Lme/timos/br/a;->f()Ljava/lang/String;

    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lme/timos/br/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lme/timos/br/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 42
    invoke-static {}, Lme/timos/br/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    iget-object v3, p0, Lme/timos/br/ActivityBugReport;->e:Ljava/io/File;

    .line 39
    invoke-direct {p0, v1, v2, v0, v3}, Lme/timos/br/ActivityBugReport;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 43
    invoke-virtual {p0}, Lme/timos/br/ActivityBugReport;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lme/timos/br/ActivityBugReport;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "quit_on_start"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lme/timos/br/ActivityBugReport;->finish()V

    .line 54
    :cond_0
    invoke-virtual {p0, v3}, Lme/timos/br/ActivityBugReport;->setFinishOnTouchOutside(Z)V

    .line 55
    invoke-static {}, Lme/timos/br/a;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/timos/br/ActivityBugReport;->setTitle(I)V

    .line 57
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 61
    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x101032c

    aput v2, v0, v3

    .line 63
    invoke-virtual {p0, v0}, Lme/timos/br/ActivityBugReport;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 69
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lme/timos/br/ActivityBugReport;->a:Landroid/widget/EditText;

    .line 70
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->a:Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->a:Landroid/widget/EditText;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 74
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->a:Landroid/widget/EditText;

    invoke-static {}, Lme/timos/br/a;->m()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 75
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->a:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setLines(I)V

    .line 76
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 78
    new-instance v2, Landroid/widget/LinearLayout;

    .line 79
    const v0, 0x101032e

    .line 78
    invoke-direct {v2, p0, v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 82
    invoke-direct {v0, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 80
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 84
    invoke-static {}, Lme/timos/br/a;->h()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x4040

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 86
    new-instance v0, Landroid/widget/Button;

    const v3, 0x101032f

    invoke-direct {v0, p0, v6, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lme/timos/br/ActivityBugReport;->c:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->c:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    invoke-direct {v3, v4, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->c:Landroid/widget/Button;

    invoke-static {}, Lme/timos/br/a;->k()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 91
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->c:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 94
    invoke-static {}, Lme/timos/br/a;->h()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Landroid/widget/Button;

    .line 96
    const v3, 0x101032f

    invoke-direct {v0, p0, v6, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iput-object v0, p0, Lme/timos/br/ActivityBugReport;->d:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->d:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    invoke-direct {v3, v4, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 97
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->d:Landroid/widget/Button;

    invoke-static {}, Lme/timos/br/a;->l()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 101
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->d:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    :cond_1
    new-instance v0, Landroid/widget/Button;

    const v3, 0x101032f

    invoke-direct {v0, p0, v6, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lme/timos/br/ActivityBugReport;->b:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->b:Landroid/widget/Button;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    invoke-direct {v3, v4, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 106
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->b:Landroid/widget/Button;

    invoke-static {}, Lme/timos/br/a;->p()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 110
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lme/timos/br/ActivityBugReport;->b:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0, v1}, Lme/timos/br/ActivityBugReport;->setContentView(Landroid/view/View;)V

    .line 118
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lme/timos/br/ActivityBugReport;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "report_file"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lme/timos/br/ActivityBugReport;->e:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    return-void

    .line 84
    :cond_2
    const/high16 v0, 0x4000

    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-static {}, Lme/timos/br/a;->n()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    invoke-virtual {p0}, Lme/timos/br/ActivityBugReport;->finish()V

    goto :goto_1
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 145
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string v1, "Errored startActivity: "

    invoke-static {v1, v0}, Lme/timos/br/d;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
