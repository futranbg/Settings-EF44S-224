.class public Lcom/android/settings/usim/usimReceiver;
.super Landroid/content/BroadcastReceiver;
.source "usimReceiver.java"


# static fields
.field private static final CARRIER:Ljava/lang/String;

.field private static isReadEF:Z

.field private static skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;


# instance fields
.field private mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 76
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    .line 77
    const-string v2, "ro.carrier"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/usim/usimReceiver;->CARRIER:Ljava/lang/String;

    .line 79
    const/4 v2, 0x0

    sput-object v2, Lcom/android/settings/usim/usimReceiver;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    .line 84
    :try_start_0
    const-string v2, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 85
    .local v1, skyUSimContactsClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    sput-object v2, Lcom/android/settings/usim/usimReceiver;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 96
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be loaded"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 89
    .end local v0           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 90
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 92
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "com.pantech.providers.skyusimcontacts.impl.SkyUSimContactsImpl could not be instantiated"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private changeLanguage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .parameter "strLang"
    .parameter "context"

    .prologue
    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeLanguage strLang = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 347
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, language:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default Locale Language is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default Locale Country is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 351
    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 353
    :cond_0
    const-string v4, "ko_KR"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 355
    const-string v4, "No Change"

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 401
    .end local v3           #language:Ljava/lang/String;
    :goto_0
    return-void

    .line 359
    .restart local v3       #language:Ljava/lang/String;
    :cond_1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    const-string v4, "en_US"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 363
    const-string v4, "No Change"

    invoke-virtual {p0, v4}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    .end local v3           #language:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 399
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 380
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #language:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 381
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 382
    .local v1, config:Landroid/content/res/Configuration;
    const-string v4, "ko_KR"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 383
    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    iput-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 393
    :cond_3
    :goto_1
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 394
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 395
    const-string v4, "com.android.providers.settings"

    invoke-static {v4}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_4
    const-string v4, "en_US"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 386
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v4, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkUsimLanguage(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/16 v12, 0x72

    const/16 v11, 0x6f

    const/16 v10, 0x6e

    const/16 v9, 0x65

    const/16 v8, 0x6b

    .line 166
    const-string v6, "uicc.lanuage.change"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 168
    .local v3, lanchange:Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUsimLanguage lanchange = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 170
    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 172
    const-string v6, "force update lanchange before read EF "

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 173
    const-string v6, "uicc.lanuage.change"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/usim/usimReceiver;->updateSimLang(Ljava/util/Locale;)V

    .line 335
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v6, "iskytelephony"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    .line 180
    iget-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    if-nez v6, :cond_1

    .line 181
    const-string v6, "mPhone is null, So quit checkUsimLanguage()"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyUsim;->isUsimCard()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 188
    const-string v6, "USIM Mode"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 189
    iget-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v7, 0x6f05

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v0

    .line 190
    .local v0, LangList:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUsimLanguage()-EF_LI :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 191
    if-eqz v0, :cond_6

    .line 192
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_1
    array-length v6, v0

    if-ge v4, v6, :cond_6

    .line 194
    aget-byte v6, v0, v4

    if-ne v6, v8, :cond_2

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    if-eq v6, v12, :cond_3

    :cond_2
    aget-byte v6, v0, v4

    if-ne v6, v8, :cond_4

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    if-ne v6, v11, :cond_4

    .line 197
    :cond_3
    const-string v6, " language change KO From LI"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 198
    const-string v6, "ko_KR"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v0           #LangList:[B
    .end local v4           #nIndex:I
    :catch_0
    move-exception v5

    .line 333
    .local v5, re:Landroid/os/RemoteException;
    const-string v6, "checkUsimLanguage() ERROR"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    .end local v5           #re:Landroid/os/RemoteException;
    .restart local v0       #LangList:[B
    .restart local v4       #nIndex:I
    :cond_4
    :try_start_1
    aget-byte v6, v0, v4

    if-ne v6, v9, :cond_5

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v0, v6

    if-ne v6, v10, :cond_5

    .line 203
    const-string v6, " language change EN From LI"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 204
    const-string v6, "en_US"

    goto/16 :goto_0

    .line 192
    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 220
    .end local v4           #nIndex:I
    :cond_6
    iget-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v7, 0x2f05

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 221
    .local v1, PL_List:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUsimLanguage()-EF_PL :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 222
    if-eqz v1, :cond_15

    .line 224
    const/4 v4, 0x0

    .restart local v4       #nIndex:I
    :goto_2
    array-length v6, v1

    if-ge v4, v6, :cond_b

    .line 226
    aget-byte v6, v1, v4

    if-ne v6, v8, :cond_7

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-eq v6, v12, :cond_8

    :cond_7
    aget-byte v6, v1, v4

    if-ne v6, v8, :cond_9

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v11, :cond_9

    .line 229
    :cond_8
    const-string v6, " language change KO From PL"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 230
    const-string v6, "ko_KR"

    goto/16 :goto_0

    .line 233
    :cond_9
    aget-byte v6, v1, v4

    if-ne v6, v9, :cond_a

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v10, :cond_a

    .line 235
    const-string v6, " language change EN From PL"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 236
    const-string v6, "en_US"

    goto/16 :goto_0

    .line 224
    :cond_a
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 251
    :cond_b
    sget-object v6, Lcom/android/settings/usim/usimReceiver;->CARRIER:Ljava/lang/String;

    const-string v7, "KT-KOR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 254
    const-string v6, " language change EN as default"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 255
    const-string v6, "en_US"

    goto/16 :goto_0

    .line 261
    .end local v0           #LangList:[B
    .end local v1           #PL_List:[B
    .end local v4           #nIndex:I
    :cond_c
    const-string v6, "GSM Mode"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 262
    iget-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v7, 0x2f05

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 263
    .restart local v1       #PL_List:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUsimLanguage()-EF_PL :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 264
    if-eqz v1, :cond_11

    .line 265
    const/4 v4, 0x0

    .restart local v4       #nIndex:I
    :goto_3
    array-length v6, v1

    if-ge v4, v6, :cond_11

    .line 267
    aget-byte v6, v1, v4

    if-ne v6, v8, :cond_d

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-eq v6, v12, :cond_e

    :cond_d
    aget-byte v6, v1, v4

    if-ne v6, v8, :cond_f

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v11, :cond_f

    .line 270
    :cond_e
    const-string v6, " language change KO From PL"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 271
    const-string v6, "ko_KR"

    goto/16 :goto_0

    .line 274
    :cond_f
    aget-byte v6, v1, v4

    if-ne v6, v9, :cond_10

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, v1, v6

    if-ne v6, v10, :cond_10

    .line 276
    const-string v6, " language change EN From PL"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 277
    const-string v6, "en_US"

    goto/16 :goto_0

    .line 265
    :cond_10
    add-int/lit8 v4, v4, 0x2

    goto :goto_3

    .line 293
    .end local v4           #nIndex:I
    :cond_11
    iget-object v6, p0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v7, 0x6f05

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v0

    .line 294
    .restart local v0       #LangList:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkUsimLanguage()-EF_LI :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 295
    if-eqz v0, :cond_15

    .line 296
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    array-length v6, v0

    if-ge v2, v6, :cond_14

    .line 298
    aget-byte v6, v0, v2

    const/16 v7, 0x25

    if-ne v6, v7, :cond_12

    .line 299
    const-string v6, " language change KO From LangList"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 300
    const-string v6, "ko_KR"

    goto/16 :goto_0

    .line 303
    :cond_12
    aget-byte v6, v0, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_13

    .line 305
    const-string v6, " language change EN From LangList"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 306
    const-string v6, "en_US"

    goto/16 :goto_0

    .line 296
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 321
    :cond_14
    sget-object v6, Lcom/android/settings/usim/usimReceiver;->CARRIER:Ljava/lang/String;

    const-string v7, "KT-KOR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 324
    const-string v6, " language change EN as default"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 325
    const-string v6, "en_US"

    goto/16 :goto_0

    .line 331
    .end local v2           #i:I
    :cond_15
    const-string v6, " Exception Case"

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateSimLang(Ljava/util/Locale;)V
    .locals 16
    .parameter "locale"

    .prologue
    .line 406
    const-string v13, "updateSimLang"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 407
    const-string v13, "iskytelephony"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lcom/android/internal/telephony/gsm/ISkyTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/gsm/ISkyTelephony;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    .line 411
    const/4 v11, 0x0

    .line 412
    .local v11, lenLangStr:I
    const/4 v12, 0x0

    .line 415
    .local v12, lenWriteStr:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    if-nez v13, :cond_1

    .line 416
    const-string v13, "mPhone is null, So quit updateSimLang()"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/SkyUsim;->isUsimCard()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 422
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 423
    .local v1, LangList:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() case1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 424
    if-eqz v1, :cond_3

    .line 426
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, LangStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    .line 438
    sget-object v13, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 440
    sget-object v13, Lcom/android/settings/usim/usimReceiver;->CARRIER:Ljava/lang/String;

    const-string v14, "KT-KOR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 441
    const-string v7, "6b72"

    .line 444
    .local v7, WriteStr:Ljava/lang/String;
    :goto_1
    const-string v13, "6b6f"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 445
    const-string v13, "6b72"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 465
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() before WriteStr:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    .line 468
    if-le v12, v11, :cond_2

    .line 470
    const/4 v13, 0x0

    invoke-virtual {v7, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 473
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() after WriteStr:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->updateEFTransparent(I[B)V

    .line 533
    .end local v2           #LangStr:Ljava/lang/String;
    .end local v7           #WriteStr:Ljava/lang/String;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x2f05

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v5

    .line 534
    .local v5, PL_List:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() PL_List:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 535
    if-eqz v5, :cond_0

    .line 537
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, PLStr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    .line 549
    sget-object v13, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 551
    sget-object v13, Lcom/android/settings/usim/usimReceiver;->CARRIER:Ljava/lang/String;

    const-string v14, "KT-KOR"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 552
    const-string v4, "6b72"

    .line 555
    .local v4, PLWriteStr:Ljava/lang/String;
    :goto_4
    const-string v13, "6b6f"

    const-string v14, ""

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 556
    const-string v13, "6b72"

    const-string v14, ""

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 575
    :goto_5
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 576
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() before PLWriteStr :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    .line 579
    if-le v12, v11, :cond_4

    .line 581
    const/4 v13, 0x0

    invoke-virtual {v4, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 584
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() after PLWriteStr :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x2f05

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->updateEFTransparent(I[B)V

    goto/16 :goto_0

    .line 587
    .end local v1           #LangList:[B
    .end local v3           #PLStr:Ljava/lang/String;
    .end local v4           #PLWriteStr:Ljava/lang/String;
    .end local v5           #PL_List:[B
    :catch_0
    move-exception v13

    goto/16 :goto_0

    .line 443
    .restart local v1       #LangList:[B
    .restart local v2       #LangStr:Ljava/lang/String;
    :cond_5
    const-string v7, "6b6f"

    .restart local v7       #WriteStr:Ljava/lang/String;
    goto/16 :goto_1

    .line 447
    .end local v7           #WriteStr:Ljava/lang/String;
    :cond_6
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 449
    const-string v7, "656e"

    .line 450
    .restart local v7       #WriteStr:Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v2, v7, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 479
    .end local v1           #LangList:[B
    .end local v2           #LangStr:Ljava/lang/String;
    .end local v7           #WriteStr:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-interface {v13, v14}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->loadEFTransparent(I)[B

    move-result-object v1

    .line 480
    .restart local v1       #LangList:[B
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() case2:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 481
    if-eqz v1, :cond_3

    .line 485
    sget-object v13, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 487
    const/16 v6, 0x25

    .line 504
    .local v6, WriteCode:B
    :goto_6
    const/4 v9, 0x0

    .local v9, i:I
    :goto_7
    array-length v13, v1

    if-ge v9, v13, :cond_c

    .line 508
    aget-byte v13, v1, v9

    if-ne v13, v6, :cond_9

    .line 511
    move v10, v9

    .line 513
    .local v10, j:I
    :cond_8
    array-length v13, v1

    add-int/lit8 v13, v13, -0x1

    if-ge v10, v13, :cond_b

    add-int/lit8 v13, v10, 0x1

    aget-byte v13, v1, v13

    aput-byte v13, v1, v10

    .line 515
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 516
    array-length v13, v1

    if-lt v10, v13, :cond_8

    .line 504
    .end local v10           #j:I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 489
    .end local v6           #WriteCode:B
    .end local v9           #i:I
    :cond_a
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 491
    const/4 v6, 0x1

    .restart local v6       #WriteCode:B
    goto :goto_6

    .line 514
    .restart local v9       #i:I
    .restart local v10       #j:I
    :cond_b
    const/4 v13, -0x1

    aput-byte v13, v1, v10

    goto :goto_8

    .line 519
    .end local v10           #j:I
    :cond_c
    array-length v13, v1

    new-array v8, v13, [B

    .line 522
    .local v8, Write_Array:[B
    const/4 v13, 0x0

    aput-byte v6, v8, v13

    .line 524
    const/4 v9, 0x1

    :goto_9
    array-length v13, v8

    if-ge v9, v13, :cond_d

    .line 526
    add-int/lit8 v13, v9, -0x1

    aget-byte v13, v1, v13

    aput-byte v13, v8, v9

    .line 524
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 528
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSimLang() Write_Array:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/usim/usimReceiver;->mPhone:Lcom/android/internal/telephony/gsm/ISkyTelephony;

    const/16 v14, 0x6f05

    invoke-interface {v13, v14, v8}, Lcom/android/internal/telephony/gsm/ISkyTelephony;->updateEFTransparent(I[B)V

    goto/16 :goto_3

    .line 554
    .end local v6           #WriteCode:B
    .end local v8           #Write_Array:[B
    .end local v9           #i:I
    .restart local v3       #PLStr:Ljava/lang/String;
    .restart local v5       #PL_List:[B
    :cond_e
    const-string v4, "6b6f"

    .restart local v4       #PLWriteStr:Ljava/lang/String;
    goto/16 :goto_4

    .line 558
    .end local v4           #PLWriteStr:Ljava/lang/String;
    :cond_f
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 560
    const-string v4, "656e"

    .line 561
    .restart local v4       #PLWriteStr:Ljava/lang/String;
    const-string v13, ""

    invoke-virtual {v3, v4, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto/16 :goto_5
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 594
    const-string v0, "usimReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[usimReceiver] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.android.settings.action.ISUSIMREADING"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gcf_test_mode"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v2, v5

    .line 111
    .local v2, gcfmode:Z
    :cond_0
    sget-object v6, Lcom/android/settings/usim/usimReceiver;->skyUSimContacts:Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;

    sget-object v7, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->CHECKLOAD_URI:Landroid/net/Uri;

    invoke-interface {v6, p1, v7}, Lcom/pantech/providers/skyusimcontacts/SkyUSimContacts;->getUSIMInfo(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 112
    .local v1, checkLoad:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ISUSIMREADING = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 118
    if-nez v2, :cond_4

    if-eq v1, v5, :cond_1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_4

    .line 128
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.USIMREADINGNOTDONE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v4, usimintent:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    .end local v1           #checkLoad:I
    .end local v2           #gcfmode:Z
    .end local v4           #usimintent:Landroid/content/Intent;
    :cond_2
    :goto_0
    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 143
    const-string v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, stateExtra:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_SIM_STATE_CHANGED : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 145
    const-string v6, "LOCKED"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 147
    sput-boolean v5, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/usim/usimReceiver;->checkUsimLanguage(Landroid/content/Context;)V

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReadEF in LOCKED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 160
    .end local v3           #stateExtra:Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 133
    .restart local v1       #checkLoad:I
    .restart local v2       #gcfmode:Z
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.settings.action.USIMREADINGDONE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .restart local v4       #usimintent:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    .end local v1           #checkLoad:I
    .end local v2           #gcfmode:Z
    .end local v4           #usimintent:Landroid/content/Intent;
    .restart local v3       #stateExtra:Ljava/lang/String;
    :cond_5
    const-string v5, "READY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReadEF in READY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/usim/usimReceiver;->log(Ljava/lang/String;)V

    .line 154
    sget-boolean v5, Lcom/android/settings/usim/usimReceiver;->isReadEF:Z

    if-nez v5, :cond_3

    .line 156
    invoke-direct {p0, p1}, Lcom/android/settings/usim/usimReceiver;->checkUsimLanguage(Landroid/content/Context;)V

    goto :goto_1
.end method
