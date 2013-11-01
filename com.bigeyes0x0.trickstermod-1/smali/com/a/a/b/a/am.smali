.class final Lcom/a/a/b/a/am;
.super Lcom/a/a/ad;
.source "TypeAdapters.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/a/a/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/a/a/d/a;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 537
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/a/am;->a(Lcom/a/a/d/a;Ljava/util/Calendar;)V

    return-void
.end method

.method public a(Lcom/a/a/d/a;Ljava/util/Calendar;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 581
    if-nez p2, :cond_0

    .line 582
    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/a;

    .line 599
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->d()Lcom/a/a/d/a;

    .line 586
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 587
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/a;->a(J)Lcom/a/a/d/a;

    .line 588
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 589
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/a;->a(J)Lcom/a/a/d/a;

    .line 590
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 591
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/a;->a(J)Lcom/a/a/d/a;

    .line 592
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 593
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/a;->a(J)Lcom/a/a/d/a;

    .line 594
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 595
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/a;->a(J)Lcom/a/a/d/a;

    .line 596
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/a/a/d/a;->a(Ljava/lang/String;)Lcom/a/a/d/a;

    .line 597
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/d/a;->a(J)Lcom/a/a/d/a;

    .line 598
    invoke-virtual {p1}, Lcom/a/a/d/a;->e()Lcom/a/a/d/a;

    goto :goto_0
.end method
