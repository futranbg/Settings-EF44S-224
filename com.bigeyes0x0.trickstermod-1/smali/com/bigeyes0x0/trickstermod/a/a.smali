.class public Lcom/bigeyes0x0/trickstermod/a/a;
.super Landroid/app/AlertDialog$Builder;
.source "DialogEditNumBuilder.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:I

.field private h:Landroid/widget/ImageButton;

.field private i:Landroid/widget/ImageButton;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/SeekBar;

.field private l:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZIIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean p2, p0, Lcom/bigeyes0x0/trickstermod/a/a;->a:Z

    .line 51
    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->b:Z

    .line 52
    iput p3, p0, Lcom/bigeyes0x0/trickstermod/a/a;->c:I

    .line 53
    iput p4, p0, Lcom/bigeyes0x0/trickstermod/a/a;->f:I

    .line 54
    iput p5, p0, Lcom/bigeyes0x0/trickstermod/a/a;->g:I

    .line 55
    iput p6, p0, Lcom/bigeyes0x0/trickstermod/a/a;->d:I

    .line 56
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->f:I

    if-gez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->e:Z

    .line 57
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/a/a;->c()V

    .line 58
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;ZZII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    iput-boolean p2, p0, Lcom/bigeyes0x0/trickstermod/a/a;->a:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->b:Z

    .line 41
    iput p4, p0, Lcom/bigeyes0x0/trickstermod/a/a;->c:I

    .line 42
    iput p5, p0, Lcom/bigeyes0x0/trickstermod/a/a;->d:I

    .line 43
    iput-boolean p3, p0, Lcom/bigeyes0x0/trickstermod/a/a;->e:Z

    .line 44
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/a/a;->c()V

    .line 45
    return-void
.end method

.method private a(I)I
    .locals 2
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->f:I

    if-ge p1, v0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 84
    :cond_0
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->f:I

    if-gt v0, p1, :cond_2

    iget v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->g:I

    if-gt p1, v0, :cond_2

    .line 86
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->f:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->d:I

    rem-int/2addr v0, v1

    .line 87
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->d:I

    sub-int/2addr v1, v0

    .line 89
    if-ge v0, v1, :cond_1

    .line 90
    sub-int v0, p1, v0

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->l:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    goto :goto_0

    .line 92
    :cond_1
    add-int v0, p1, v1

    goto :goto_1

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->l:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private b(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 109
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->l:[I

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->l:[I

    aget v0, v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/a/a;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 119
    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 120
    invoke-virtual {p0, v1}, Lcom/bigeyes0x0/trickstermod/a/a;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v0, 0x7f06000d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->h:Landroid/widget/ImageButton;

    .line 122
    const v0, 0x7f06000f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->i:Landroid/widget/ImageButton;

    .line 123
    const v0, 0x7f06000e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    .line 124
    const v0, 0x7f060010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->k:Landroid/widget/SeekBar;

    .line 126
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 130
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->e:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->a:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 137
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->b:Z

    if-eqz v0, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/a/a;->d()V

    .line 139
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->k:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->k:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->l:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 141
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->k:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 146
    :goto_0
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/a/a;->e()V

    .line 148
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->k:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 155
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->g:I

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->f:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->d:I

    div-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    .line 156
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->l:[I

    .line 157
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 160
    return-void

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/bigeyes0x0/trickstermod/a/a;->l:[I

    iget v3, p0, Lcom/bigeyes0x0/trickstermod/a/a;->f:I

    iget v4, p0, Lcom/bigeyes0x0/trickstermod/a/a;->d:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    aput v3, v2, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 216
    iget v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->c:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 219
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->b:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->k:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->c:I

    invoke-direct {p0, v1}, Lcom/bigeyes0x0/trickstermod/a/a;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 222
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 213
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 62
    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 63
    iget-boolean v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->b:Z

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->k:Landroid/widget/SeekBar;

    invoke-direct {p0, v0}, Lcom/bigeyes0x0/trickstermod/a/a;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->i:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->h:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->i:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 165
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->d:I

    .line 164
    add-int/2addr v0, v1

    .line 166
    iget-boolean v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->b:Z

    if-eqz v1, :cond_5

    .line 167
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->g:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->g:I

    :cond_0
    iput v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->c:I

    .line 171
    :goto_0
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/a/a;->e()V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->h:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 175
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->d:I

    .line 174
    sub-int/2addr v0, v1

    .line 176
    iget-boolean v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->b:Z

    if-eqz v1, :cond_6

    .line 177
    iget v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->f:I

    if-le v1, v0, :cond_2

    iget v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->f:I

    :cond_2
    iput v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->c:I

    .line 181
    :goto_1
    iget-boolean v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->e:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->c:I

    if-ltz v0, :cond_7

    .line 182
    :cond_3
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/a/a;->e()V

    .line 188
    :cond_4
    :goto_2
    return-void

    .line 169
    :cond_5
    iput v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->c:I

    goto :goto_0

    .line 179
    :cond_6
    iput v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->c:I

    goto :goto_1

    .line 184
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->c:I

    .line 185
    invoke-direct {p0}, Lcom/bigeyes0x0/trickstermod/a/a;->e()V

    goto :goto_2
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    if-eqz p3, :cond_0

    .line 193
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    invoke-direct {p0, p2}, Lcom/bigeyes0x0/trickstermod/a/a;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bigeyes0x0/trickstermod/a/a;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 196
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    return-void
.end method
