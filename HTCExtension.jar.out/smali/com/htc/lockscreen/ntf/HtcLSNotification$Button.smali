.class public Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
.super Ljava/lang/Object;
.source "HtcLSNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/ntf/HtcLSNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Button"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBtnBackgroundPkg:Ljava/lang/String;

.field private mBtnBackgroundRes:I

.field private mBtnBitmap:Landroid/graphics/Bitmap;

.field private mBtnPendingIntent:Landroid/app/PendingIntent;

.field private mBtnRes:I

.field private mBtnStr:Ljava/lang/String;

.field private mBtndPkg:Ljava/lang/String;

.field private mGoToUnlock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 484
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mGoToUnlock:Z

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtndPkg:Ljava/lang/String;

    .line 323
    iput v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnRes:I

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    .line 327
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundPkg:Ljava/lang/String;

    .line 328
    iput v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundRes:I

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 334
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-boolean v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mGoToUnlock:Z

    .line 322
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtndPkg:Ljava/lang/String;

    .line 323
    iput v3, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnRes:I

    .line 325
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    .line 327
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundPkg:Ljava/lang/String;

    .line 328
    iput v3, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundRes:I

    .line 335
    #calls: Lcom/htc/lockscreen/ntf/HtcLSNotification;->PendingIntentFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;
    invoke-static {p1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->access$000(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnPendingIntent:Landroid/app/PendingIntent;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v0, v2

    .line 338
    .local v0, exist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 339
    sget-object v1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    .line 341
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtndPkg:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnRes:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundPkg:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundRes:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mGoToUnlock:Z

    .line 349
    return-void

    .end local v0           #exist:Z
    :cond_1
    move v0, v3

    .line 337
    goto :goto_0

    .restart local v0       #exist:Z
    :cond_2
    move v1, v3

    .line 348
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBtnBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, btn:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundRes:I

    if-lez v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundPkg:Ljava/lang/String;

    iget v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundRes:I

    #calls: Lcom/htc/lockscreen/ntf/HtcLSNotification;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v1, v2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->access$200(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 460
    :cond_0
    return-object v0
.end method

.method public getBtnBackgroundPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getBtnBackgroundResId()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundRes:I

    return v0
.end method

.method public getBtnDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, btn:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtndPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnRes:I

    if-lez v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtndPkg:Ljava/lang/String;

    iget v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnRes:I

    #calls: Lcom/htc/lockscreen/ntf/HtcLSNotification;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v1, v2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->access$200(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 412
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 413
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #btn:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 415
    .restart local v0       #btn:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v0
.end method

.method public getBtnPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtndPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getBtnResId()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnRes:I

    return v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    return-object v0
.end method

.method public isGoToUnlock()Z
    .locals 1

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mGoToUnlock:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 427
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtndPkg:Ljava/lang/String;

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnRes:I

    .line 429
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    .line 430
    return-void
.end method

.method public setBitmap(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    .line 435
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtndPkg:Ljava/lang/String;

    .line 436
    iput p2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnRes:I

    .line 442
    :goto_0
    return-void

    .line 439
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtndPkg:Ljava/lang/String;

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnRes:I

    goto :goto_0
.end method

.method public setBitmapBackground(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 445
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    .line 446
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundPkg:Ljava/lang/String;

    .line 447
    iput p2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundRes:I

    .line 453
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundPkg:Ljava/lang/String;

    .line 451
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundRes:I

    goto :goto_0
.end method

.method public setGoToUnlock(Z)V
    .locals 0
    .parameter "unlock"

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mGoToUnlock:Z

    .line 393
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 400
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnPendingIntent:Landroid/app/PendingIntent;

    .line 401
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 476
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnPendingIntent:Landroid/app/PendingIntent;

    #calls: Lcom/htc/lockscreen/ntf/HtcLSNotification;->parcelable2Parcel(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    invoke-static {v0, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->access$100(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    .line 365
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtndPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnBackgroundRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mBtnStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-boolean v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->mGoToUnlock:Z

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    :goto_1
    return-void

    .line 370
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 383
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
