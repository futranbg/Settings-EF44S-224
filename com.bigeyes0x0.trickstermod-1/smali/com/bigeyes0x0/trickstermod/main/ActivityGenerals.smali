.class public Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;
.super Landroid/app/Activity;
.source "ActivityGenerals.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static a:Lcom/bigeyes0x0/trickstermod/TrApp;

.field static b:Lcom/bigeyes0x0/trickstermod/j;

.field static c:Lcom/bigeyes0x0/trickstermod/h;


# instance fields
.field private d:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->a:Lcom/bigeyes0x0/trickstermod/TrApp;

    .line 133
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->c:Lcom/bigeyes0x0/trickstermod/j;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->b:Lcom/bigeyes0x0/trickstermod/j;

    .line 134
    sget-object v0, Lcom/bigeyes0x0/trickstermod/TrApp;->b:Lcom/bigeyes0x0/trickstermod/h;

    sput-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->c:Lcom/bigeyes0x0/trickstermod/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 140
    const v1, 0x7f08003f

    if-ne v0, v1, :cond_0

    .line 141
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0, v2}, Lcom/bigeyes0x0/trickstermod/j;->e(Z)V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->finish()V

    .line 144
    return-void
.end method

.method public onClickOk(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/bigeyes0x0/trickstermod/service/ServiceApplySettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 148
    const-string v1, "delay_apply"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 150
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->finish()V

    .line 151
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->setTheme(I)V

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f080068

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 163
    const v2, 0x7f08009e

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 164
    const v2, 0x7f0800a2

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 165
    const v2, 0x7f0800a3

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 166
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 167
    const v2, 0x1090003

    .line 166
    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 168
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->d:Landroid/widget/ListView;

    .line 169
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->d:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 172
    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    :goto_0
    return-void

    .line 175
    :cond_0
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 176
    sget-object v0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/j;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->setTheme(I)V

    .line 177
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->setTitle(I)V

    .line 178
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->setContentView(I)V

    .line 179
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    const-string v2, "result"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 184
    :cond_1
    const v2, 0x7f0a0003

    invoke-virtual {p0, v2}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->setTheme(I)V

    .line 185
    const-string v2, "action_premium"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-static {p0, p0}, Lcom/bigeyes0x0/trickstermod/k;->a(Landroid/content/Context;Landroid/app/Activity;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 190
    :cond_2
    new-instance v0, Lcom/bigeyes0x0/trickstermod/main/c;

    invoke-direct {v0, v1}, Lcom/bigeyes0x0/trickstermod/main/c;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/bigeyes0x0/trickstermod/main/c;->start()V

    .line 191
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->finish()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->d:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    invoke-static {}, Lcom/bigeyes0x0/trickstermod/c;->values()[Lcom/bigeyes0x0/trickstermod/c;

    move-result-object v2

    sget-object v3, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->b:Lcom/bigeyes0x0/trickstermod/j;

    invoke-virtual {v3}, Lcom/bigeyes0x0/trickstermod/j;->k()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/bigeyes0x0/trickstermod/c;->b()I

    move-result v2

    .line 202
    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 204
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 205
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 206
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    packed-switch p3, :pswitch_data_0

    .line 224
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->setResult(ILandroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Lcom/bigeyes0x0/trickstermod/main/ActivityGenerals;->finish()V

    .line 226
    return-void

    .line 211
    :pswitch_0
    const-string v0, "result"

    const v2, 0x7f080068

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 214
    :pswitch_1
    const-string v0, "result"

    const v2, 0x7f08009e

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 217
    :pswitch_2
    const-string v0, "result"

    const v2, 0x7f0800a2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 220
    :pswitch_3
    const-string v0, "result"

    const v2, 0x7f0800a3

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
