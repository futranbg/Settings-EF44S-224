.class public Lme/timos/a/a/b;
.super Ljava/lang/Object;
.source "IabHelper.java"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/lang/String;

.field h:Landroid/content/Context;

.field i:Lcom/android/vending/billing/IInAppBillingService;

.field j:Landroid/content/ServiceConnection;

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Lme/timos/a/a/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v1, p0, Lme/timos/a/a/b;->a:Z

    .line 75
    const-string v0, "IabHelper"

    iput-object v0, p0, Lme/timos/a/a/b;->b:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lme/timos/a/a/b;->c:Z

    .line 81
    iput-boolean v1, p0, Lme/timos/a/a/b;->d:Z

    .line 84
    iput-boolean v1, p0, Lme/timos/a/a/b;->e:Z

    .line 88
    iput-boolean v1, p0, Lme/timos/a/a/b;->f:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lme/timos/a/a/b;->g:Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lme/timos/a/a/b;->m:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lme/timos/a/a/b;->m:Ljava/lang/String;

    .line 166
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 751
    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    .line 754
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 755
    const-string v1, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 764
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 766
    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    .line 767
    rsub-int v0, p0, -0x3e8

    .line 768
    if-ltz v0, :cond_0

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    .line 774
    :goto_0
    return-object v0

    .line 769
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":Unknown IAB Helper Error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 771
    :cond_1
    if-ltz p0, :cond_2

    array-length v1, v0

    if-lt p0, v1, :cond_3

    .line 772
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":Unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 774
    :cond_3
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 302
    iget-boolean v0, p0, Lme/timos/a/a/b;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/content/Intent;)I
    .locals 4
    .parameter

    .prologue
    .line 804
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 805
    if-nez v0, :cond_0

    .line 806
    const-string v0, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 807
    const/4 v0, 0x0

    .line 810
    :goto_0
    return v0

    .line 809
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 810
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 812
    :cond_2
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 814
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for intent response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Landroid/os/Bundle;)I
    .locals 4
    .parameter

    .prologue
    .line 788
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 789
    if-nez v0, :cond_0

    .line 790
    const-string v0, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 791
    const/4 v0, 0x0

    .line 794
    :goto_0
    return v0

    .line 793
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 794
    :cond_1
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    .line 796
    :cond_2
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 798
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type for bundle response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method a(Ljava/lang/String;Lme/timos/a/a/o;Ljava/util/List;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 898
    const-string v0, "Querying SKU details."

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 899
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 900
    invoke-virtual {p2, p1}, Lme/timos/a/a/o;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 901
    if-eqz p3, :cond_1

    .line 902
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 909
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 910
    const-string v0, "queryPrices: nothing to do because there are no SKUs."

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    move v0, v1

    .line 939
    :goto_1
    return v0

    .line 902
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 903
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 904
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 914
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 915
    const-string v3, "ITEM_ID_LIST"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 916
    iget-object v2, p0, Lme/timos/a/a/b;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1, v0}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 919
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 920
    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 921
    if-eqz v0, :cond_4

    .line 922
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSkuDetails() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lme/timos/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 926
    :cond_4
    const-string v0, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 927
    const/16 v0, -0x3ea

    goto :goto_1

    .line 932
    :cond_5
    const-string v2, "DETAILS_LIST"

    .line 931
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 939
    goto :goto_1

    .line 934
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 935
    new-instance v3, Lme/timos/a/a/r;

    invoke-direct {v3, p1, v0}, Lme/timos/a/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Got sku details: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2, v3}, Lme/timos/a/a/o;->a(Lme/timos/a/a/r;)V

    goto :goto_2
.end method

.method a(Lme/timos/a/a/o;Ljava/lang/String;)I
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 835
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Querying owned items, item type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 838
    const/4 v0, 0x0

    move v1, v3

    .line 841
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 842
    iget-object v2, p0, Lme/timos/a/a/b;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    iget-object v5, p0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5, p2, v0}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 845
    invoke-virtual {p0, v6}, Lme/timos/a/a/b;->a(Landroid/os/Bundle;)I

    move-result v0

    .line 846
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Owned items response: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 847
    if-eqz v0, :cond_1

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPurchases() failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lme/timos/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    move v3, v0

    .line 893
    :cond_0
    :goto_1
    return v3

    .line 851
    :cond_1
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 852
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 853
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 854
    :cond_2
    const-string v0, "Bundle returned from getPurchases() doesn\'t contain required fields."

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 855
    const/16 v3, -0x3ea

    goto :goto_1

    .line 859
    :cond_3
    const-string v0, "INAPP_PURCHASE_ITEM_LIST"

    .line 858
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 861
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    .line 860
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 863
    const-string v0, "INAPP_DATA_SIGNATURE_LIST"

    .line 862
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    move v5, v3

    move v4, v1

    .line 865
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v5, v0, :cond_4

    .line 889
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Continuation token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 891
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 893
    if-eqz v4, :cond_0

    const/16 v3, -0x3eb

    goto :goto_1

    .line 866
    :cond_4
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 867
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 868
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 869
    iget-object v10, p0, Lme/timos/a/a/b;->m:Ljava/lang/String;

    invoke-static {v10, v0, v1}, Lme/timos/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 870
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Sku is owned: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 871
    new-instance v2, Lme/timos/a/a/p;

    invoke-direct {v2, p2, v0, v1}, Lme/timos/a/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {v2}, Lme/timos/a/a/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 874
    const-string v1, "BUG: empty/null token!"

    invoke-virtual {p0, v1}, Lme/timos/a/a/b;->e(Ljava/lang/String;)V

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "Purchase data: "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 879
    :cond_5
    invoke-virtual {p1, v2}, Lme/timos/a/a/o;->a(Lme/timos/a/a/p;)V

    .line 865
    :goto_3
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_2

    .line 882
    :cond_6
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->e(Ljava/lang/String;)V

    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "   Purchase data: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "   Signature: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 885
    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    move v1, v4

    goto/16 :goto_0
.end method

.method public a(ZLjava/util/List;)Lme/timos/a/a/o;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 522
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lme/timos/a/a/b;->a(ZLjava/util/List;Ljava/util/List;)Lme/timos/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public a(ZLjava/util/List;Ljava/util/List;)Lme/timos/a/a/o;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 540
    invoke-direct {p0}, Lme/timos/a/a/b;->c()V

    .line 541
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->a(Ljava/lang/String;)V

    .line 543
    :try_start_0
    new-instance v0, Lme/timos/a/a/o;

    invoke-direct {v0}, Lme/timos/a/a/o;-><init>()V

    .line 544
    const-string v1, "inapp"

    invoke-virtual {p0, v0, v1}, Lme/timos/a/a/b;->a(Lme/timos/a/a/o;Ljava/lang/String;)I

    move-result v1

    .line 545
    if-eqz v1, :cond_0

    .line 546
    new-instance v0, Lme/timos/a/a/a;

    const-string v2, "Error refreshing inventory (querying owned items)."

    invoke-direct {v0, v1, v2}, Lme/timos/a/a/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    new-instance v1, Lme/timos/a/a/a;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lme/timos/a/a/a;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 549
    :cond_0
    if-eqz p1, :cond_1

    .line 550
    :try_start_1
    const-string v1, "inapp"

    invoke-virtual {p0, v1, v0, p2}, Lme/timos/a/a/b;->a(Ljava/lang/String;Lme/timos/a/a/o;Ljava/util/List;)I

    move-result v1

    .line 551
    if-eqz v1, :cond_1

    .line 552
    new-instance v0, Lme/timos/a/a/a;

    const-string v2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v0, v1, v2}, Lme/timos/a/a/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 576
    :catch_1
    move-exception v0

    .line 577
    new-instance v1, Lme/timos/a/a/a;

    const/16 v2, -0x3ea

    const-string v3, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v1, v2, v3, v0}, Lme/timos/a/a/a;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 557
    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lme/timos/a/a/b;->e:Z

    if-eqz v1, :cond_3

    .line 558
    const-string v1, "subs"

    invoke-virtual {p0, v0, v1}, Lme/timos/a/a/b;->a(Lme/timos/a/a/o;Ljava/lang/String;)I

    move-result v1

    .line 559
    if-eqz v1, :cond_2

    .line 560
    new-instance v0, Lme/timos/a/a/a;

    const-string v2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v0, v1, v2}, Lme/timos/a/a/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 563
    :cond_2
    if-eqz p1, :cond_3

    .line 564
    const-string v1, "subs"

    invoke-virtual {p0, v1, v0, p2}, Lme/timos/a/a/b;->a(Ljava/lang/String;Lme/timos/a/a/o;Ljava/util/List;)I

    move-result v1

    .line 565
    if-eqz v1, :cond_3

    .line 566
    new-instance v0, Lme/timos/a/a/a;

    const-string v2, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v0, v1, v2}, Lme/timos/a/a/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 571
    :cond_3
    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 288
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/timos/a/a/b;->c:Z

    .line 290
    iget-object v0, p0, Lme/timos/a/a/b;->j:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    iget-object v1, p0, Lme/timos/a/a/b;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 294
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/timos/a/a/b;->d:Z

    .line 295
    iput-object v2, p0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    .line 296
    iput-object v2, p0, Lme/timos/a/a/b;->j:Landroid/content/ServiceConnection;

    .line 297
    iput-object v2, p0, Lme/timos/a/a/b;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 298
    iput-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    .line 299
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;ILme/timos/a/a/k;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 333
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lme/timos/a/a/b;->a(Landroid/app/Activity;Ljava/lang/String;ILme/timos/a/a/k;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;ILme/timos/a/a/k;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lme/timos/a/a/b;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILme/timos/a/a/k;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILme/timos/a/a/k;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 371
    invoke-direct {p0}, Lme/timos/a/a/b;->c()V

    .line 372
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->a(Ljava/lang/String;)V

    .line 373
    const-string v0, "launchPurchaseFlow"

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->b(Ljava/lang/String;)V

    .line 376
    const-string v0, "subs"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lme/timos/a/a/b;->e:Z

    if-nez v0, :cond_1

    .line 377
    new-instance v0, Lme/timos/a/a/n;

    const/16 v1, -0x3f1

    .line 378
    const-string v2, "Subscriptions are not available."

    .line 377
    invoke-direct {v0, v1, v2}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lme/timos/a/a/b;->b()V

    .line 380
    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Constructing buy intent for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lme/timos/a/a/b;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    iget-object v2, p0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 387
    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->a(Landroid/os/Bundle;)I

    move-result v1

    .line 388
    if-eqz v1, :cond_2

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to buy item, Error response: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lme/timos/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lme/timos/a/a/b;->b()V

    .line 391
    new-instance v0, Lme/timos/a/a/n;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v1, v2}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 392
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    invoke-interface {p5, v0, v1}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 409
    invoke-virtual {p0}, Lme/timos/a/a/b;->b()V

    .line 411
    new-instance v0, Lme/timos/a/a/n;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v0, v1, v2}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 412
    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V

    goto/16 :goto_0

    .line 396
    :cond_2
    :try_start_1
    const-string v1, "BUY_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launching buy intent for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 398
    iput p4, p0, Lme/timos/a/a/b;->k:I

    .line 399
    iput-object p5, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    .line 400
    iput-object p3, p0, Lme/timos/a/a/b;->l:Ljava/lang/String;

    .line 401
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 402
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 403
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 404
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p1

    move v2, p4

    .line 401
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 414
    :catch_1
    move-exception v0

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 417
    invoke-virtual {p0}, Lme/timos/a/a/b;->b()V

    .line 419
    new-instance v0, Lme/timos/a/a/n;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v0, v1, v2}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 420
    if-eqz p5, :cond_0

    invoke-interface {p5, v0, v7}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 780
    iget-boolean v0, p0, Lme/timos/a/a/b;->c:Z

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal state for operation ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 782
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_0
    return-void
.end method

.method a(Ljava/util/List;Lme/timos/a/a/i;Lme/timos/a/a/j;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 946
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 947
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->b(Ljava/lang/String;)V

    .line 948
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lme/timos/a/a/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lme/timos/a/a/f;-><init>(Lme/timos/a/a/b;Ljava/util/List;Lme/timos/a/a/i;Landroid/os/Handler;Lme/timos/a/a/j;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 977
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 978
    return-void
.end method

.method public a(Ljava/util/List;Lme/timos/a/a/j;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 738
    invoke-direct {p0}, Lme/timos/a/a/b;->c()V

    .line 739
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->a(Ljava/lang/String;)V

    .line 740
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lme/timos/a/a/b;->a(Ljava/util/List;Lme/timos/a/a/i;Lme/timos/a/a/j;)V

    .line 741
    return-void
.end method

.method public a(Lme/timos/a/a/l;)V
    .locals 4
    .parameter

    .prologue
    .line 205
    invoke-direct {p0}, Lme/timos/a/a/b;->c()V

    .line 206
    iget-boolean v0, p0, Lme/timos/a/a/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IAB helper is already set up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    const-string v0, "Starting in-app billing setup."

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 210
    new-instance v0, Lme/timos/a/a/c;

    invoke-direct {v0, p0, p1}, Lme/timos/a/a/c;-><init>(Lme/timos/a/a/b;Lme/timos/a/a/l;)V

    iput-object v0, p0, Lme/timos/a/a/b;->j:Landroid/content/ServiceConnection;

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v1, p0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 269
    iget-object v1, p0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    iget-object v2, p0, Lme/timos/a/a/b;->j:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 279
    :cond_1
    :goto_0
    return-void

    .line 273
    :cond_2
    if-eqz p1, :cond_1

    .line 275
    new-instance v0, Lme/timos/a/a/n;

    const/4 v1, 0x3

    .line 276
    const-string v2, "Billing service unavailable on device."

    .line 275
    invoke-direct {v0, v1, v2}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 274
    invoke-interface {p1, v0}, Lme/timos/a/a/l;->a(Lme/timos/a/a/n;)V

    goto :goto_0
.end method

.method a(Lme/timos/a/a/p;)V
    .locals 5
    .parameter

    .prologue
    .line 657
    invoke-direct {p0}, Lme/timos/a/a/b;->c()V

    .line 658
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->a(Ljava/lang/String;)V

    .line 660
    iget-object v0, p1, Lme/timos/a/a/p;->a:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 661
    new-instance v0, Lme/timos/a/a/a;

    const/16 v1, -0x3f2

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Items of type \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lme/timos/a/a/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' can\'t be consumed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-direct {v0, v1, v2}, Lme/timos/a/a/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 666
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lme/timos/a/a/p;->d()Ljava/lang/String;

    move-result-object v0

    .line 667
    invoke-virtual {p1}, Lme/timos/a/a/p;->b()Ljava/lang/String;

    move-result-object v1

    .line 668
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t consume "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 670
    new-instance v0, Lme/timos/a/a/a;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 671
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-direct {v0, v2, v1}, Lme/timos/a/a/a;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :catch_0
    move-exception v0

    .line 685
    new-instance v1, Lme/timos/a/a/a;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lme/timos/a/a/a;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 674
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Consuming sku: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 675
    iget-object v2, p0, Lme/timos/a/a/b;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v4, p0, Lme/timos/a/a/b;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/android/vending/billing/IInAppBillingService;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 676
    if-nez v0, :cond_3

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Successfully consumed sku: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 687
    return-void

    .line 680
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error consuming consuming sku "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lme/timos/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 681
    new-instance v2, Lme/timos/a/a/a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error consuming sku "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lme/timos/a/a/a;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public a(Lme/timos/a/a/p;Lme/timos/a/a/i;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 725
    invoke-direct {p0}, Lme/timos/a/a/b;->c()V

    .line 726
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->a(Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 728
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lme/timos/a/a/b;->a(Ljava/util/List;Lme/timos/a/a/i;Lme/timos/a/a/j;)V

    .line 730
    return-void
.end method

.method public a(ZLjava/util/List;Lme/timos/a/a/m;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 608
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 609
    invoke-direct {p0}, Lme/timos/a/a/b;->c()V

    .line 610
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->a(Ljava/lang/String;)V

    .line 611
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->b(Ljava/lang/String;)V

    .line 612
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lme/timos/a/a/d;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lme/timos/a/a/d;-><init>(Lme/timos/a/a/b;ZLjava/util/List;Lme/timos/a/a/m;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 635
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 636
    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    const/16 v8, -0x3ea

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 439
    iget v2, p0, Lme/timos/a/a/b;->k:I

    if-eq p1, v2, :cond_0

    .line 518
    :goto_0
    return v0

    .line 441
    :cond_0
    invoke-direct {p0}, Lme/timos/a/a/b;->c()V

    .line 442
    const-string v2, "handleActivityResult"

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->a(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p0}, Lme/timos/a/a/b;->b()V

    .line 447
    if-nez p3, :cond_2

    .line 448
    const-string v0, "Null data in IAB activity result."

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 449
    new-instance v0, Lme/timos/a/a/n;

    const-string v2, "Null data in IAB result"

    invoke-direct {v0, v8, v2}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 450
    iget-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    invoke-interface {v2, v0, v7}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V

    :cond_1
    move v0, v1

    .line 451
    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p0, p3}, Lme/timos/a/a/b;->a(Landroid/content/Intent;)I

    move-result v2

    .line 455
    const-string v3, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 456
    const-string v4, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 458
    if-ne p2, v5, :cond_a

    if-nez v2, :cond_a

    .line 459
    const-string v2, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Purchase data: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Data signature: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Extras: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Expected item type: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lme/timos/a/a/b;->l:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 465
    if-eqz v3, :cond_3

    if-nez v4, :cond_5

    .line 466
    :cond_3
    const-string v0, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Extras: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 468
    new-instance v0, Lme/timos/a/a/n;

    const/16 v2, -0x3f0

    const-string v3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v0, v2, v3}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 469
    iget-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    invoke-interface {v2, v0, v7}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V

    :cond_4
    move v0, v1

    .line 470
    goto/16 :goto_0

    .line 475
    :cond_5
    :try_start_0
    new-instance v2, Lme/timos/a/a/p;

    iget-object v5, p0, Lme/timos/a/a/b;->l:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v4}, Lme/timos/a/a/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v2}, Lme/timos/a/a/p;->b()Ljava/lang/String;

    move-result-object v5

    .line 479
    iget-object v6, p0, Lme/timos/a/a/b;->m:Ljava/lang/String;

    invoke-static {v6, v3, v4}, Lme/timos/a/a/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 481
    new-instance v0, Lme/timos/a/a/n;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Signature verification failed for sku "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 482
    iget-object v3, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    invoke-interface {v3, v0, v2}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V

    :cond_6
    move v0, v1

    .line 483
    goto/16 :goto_0

    .line 485
    :cond_7
    const-string v3, "Purchase signature successfully verified."

    invoke-virtual {p0, v3}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    iget-object v3, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    if-eqz v3, :cond_8

    .line 496
    iget-object v3, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    new-instance v4, Lme/timos/a/a/n;

    const-string v5, "Success"

    invoke-direct {v4, v0, v5}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4, v2}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V

    :cond_8
    :goto_1
    move v0, v1

    .line 518
    goto/16 :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    const-string v2, "Failed to parse purchase data."

    invoke-virtual {p0, v2}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 490
    new-instance v0, Lme/timos/a/a/n;

    const-string v2, "Failed to parse purchase data."

    invoke-direct {v0, v8, v2}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 491
    iget-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    invoke-interface {v2, v0, v7}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V

    :cond_9
    move v0, v1

    .line 492
    goto/16 :goto_0

    .line 499
    :cond_a
    if-ne p2, v5, :cond_b

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Result code was OK but in-app billing response was not OK: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lme/timos/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    if-eqz v0, :cond_8

    .line 503
    new-instance v0, Lme/timos/a/a/n;

    const-string v3, "Problem purchashing item."

    invoke-direct {v0, v2, v3}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 504
    iget-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    invoke-interface {v2, v0, v7}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V

    goto :goto_1

    .line 507
    :cond_b
    if-nez p2, :cond_c

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Purchase canceled - Response: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lme/timos/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 509
    new-instance v0, Lme/timos/a/a/n;

    const/16 v2, -0x3ed

    const-string v3, "User canceled."

    invoke-direct {v0, v2, v3}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 510
    iget-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    invoke-interface {v2, v0, v7}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V

    goto :goto_1

    .line 513
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Purchase failed. Result code: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 514
    const-string v3, ". Response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lme/timos/a/a/b;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->d(Ljava/lang/String;)V

    .line 515
    new-instance v0, Lme/timos/a/a/n;

    const/16 v2, -0x3ee

    const-string v3, "Unknown purchase response."

    invoke-direct {v0, v2, v3}, Lme/timos/a/a/n;-><init>(ILjava/lang/String;)V

    .line 516
    iget-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lme/timos/a/a/b;->n:Lme/timos/a/a/k;

    invoke-interface {v2, v0, v7}, Lme/timos/a/a/k;->a(Lme/timos/a/a/n;Lme/timos/a/a/p;)V

    goto/16 :goto_1
.end method

.method b()V
    .locals 2

    .prologue
    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ending async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lme/timos/a/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 828
    const-string v0, ""

    iput-object v0, p0, Lme/timos/a/a/b;->g:Ljava/lang/String;

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Lme/timos/a/a/b;->f:Z

    .line 830
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 819
    iget-boolean v0, p0, Lme/timos/a/a/b;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t start async operation ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") because another async operation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lme/timos/a/a/b;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is in progress."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_0
    iput-object p1, p0, Lme/timos/a/a/b;->g:Ljava/lang/String;

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lme/timos/a/a/b;->f:Z

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting async operation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/timos/a/a/b;->c(Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 981
    iget-boolean v0, p0, Lme/timos/a/a/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/timos/a/a/b;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 985
    iget-object v0, p0, Lme/timos/a/a/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 989
    iget-object v0, p0, Lme/timos/a/a/b;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "In-app billing warning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void
.end method
