.class public Lcom/android/server/ShowWatermarkService;
.super Landroid/app/Service;
.source "ShowWatermarkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ShowWatermarkService$LoadView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "watermark"

.field private static final VERSION:Ljava/lang/String; = "v1.5"


# instance fields
.field private MESSAGE:[Ljava/lang/String;

.field private mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mView:Landroid/view/View;

.field private monitorAccount:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ShowWatermarkService;->monitorAccount:Z

    .line 279
    new-instance v0, Lcom/android/server/ShowWatermarkService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ShowWatermarkService$1;-><init>(Lcom/android/server/ShowWatermarkService;)V

    iput-object v0, p0, Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ShowWatermarkService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/server/ShowWatermarkService;->monitorAccount:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ShowWatermarkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->removeAccountListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ShowWatermarkService;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    return-object v0
.end method

.method private getAccount()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 337
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 339
    .local v1, accountMgr:Landroid/accounts/AccountManager;
    const-string v6, "NoAccount"

    .line 340
    .local v6, nullAccount:Ljava/lang/String;
    iput-boolean v8, p0, Lcom/android/server/ShowWatermarkService;->monitorAccount:Z

    .line 342
    if-nez v1, :cond_0

    .line 376
    .end local v6           #nullAccount:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 346
    .restart local v6       #nullAccount:Ljava/lang/String;
    :cond_0
    const-string v7, "com.htc.android.mail.eas"

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 348
    .local v2, accounts:[Landroid/accounts/Account;
    if-eqz v2, :cond_1

    array-length v7, v2

    if-lez v7, :cond_1

    .line 349
    aget-object v7, v2, v8

    iget-object v6, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 352
    :cond_1
    const-string v7, "com.google"

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_2

    array-length v7, v2

    if-lez v7, :cond_2

    .line 355
    aget-object v7, v2, v8

    iget-object v6, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 358
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 360
    if-eqz v2, :cond_5

    array-length v7, v2

    if-lez v7, :cond_5

    .line 362
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_5

    aget-object v0, v3, v4

    .line 364
    .local v0, ac:Landroid/accounts/Account;
    const-string v7, "com.htc.showme"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.sync.provider.weather"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.android.Stock"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.stock"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "com.htc.newsreader"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 362
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 371
    :cond_4
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 375
    .end local v0           #ac:Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_5
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/ShowWatermarkService;->monitorAccount:Z

    goto :goto_0
.end method

.method private getWatermarkWords()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 295
    sget-object v3, Lcom/htc/htcjavaflag/HtcWatermarkWord;->Htc_WATERMARK_MSG:[Ljava/lang/String;

    array-length v0, v3

    .line 296
    .local v0, mWordFromConf:I
    add-int/lit8 v1, v0, 0x1

    .line 299
    .local v1, mWordLength:I
    add-int/lit8 v1, v1, 0x1

    .line 301
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    .line 302
    sget-object v3, Lcom/htc/htcjavaflag/HtcWatermarkWord;->Htc_WATERMARK_MSG:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    invoke-static {v3, v5, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    const-string v4, "ro.serialno"

    const-string v5, "null"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 312
    const-string v3, "ro.un"

    const-string v4, "unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, userName:Ljava/lang/String;
    const-string v3, "unknown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->getAccount()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v3, p0, Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_0
.end method

.method private removeAccountListener()V
    .locals 3

    .prologue
    .line 383
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService;->mAccountChangeListener:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 393
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "watermark"

    const-string v2, "remove account listener fail, listener is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 391
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "watermark"

    const-string v2, "remove account listener fail, listener is not added"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private strimString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 327
    const/16 v0, 0x14

    .line 329
    .local v0, MAX_ACCOUNT_LEN:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 330
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 332
    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 239
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 398
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 400
    const-string v1, "watermark"

    const-string v2, "stop watermark service, reboot device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-boolean v1, p0, Lcom/android/server/ShowWatermarkService;->monitorAccount:Z

    if-eqz v1, :cond_0

    .line 403
    invoke-direct {p0}, Lcom/android/server/ShowWatermarkService;->removeAccountListener()V

    .line 405
    :cond_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/server/ShowWatermarkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 409
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    iput-object v3, p0, Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;

    .line 417
    return-void

    .line 411
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/PowerManagerService;->lowLevelShutdown()V

    goto :goto_0
.end method
