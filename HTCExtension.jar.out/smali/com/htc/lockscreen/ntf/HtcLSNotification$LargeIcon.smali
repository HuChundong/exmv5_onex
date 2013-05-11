.class Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;
.super Ljava/lang/Object;
.source "HtcLSNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/ntf/HtcLSNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LargeIcon"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBitmapData:[B

.field private mLargeIconPackage:Ljava/lang/String;

.field private mLargeIconRes:I

.field private mPersonalId:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 608
    new-instance v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 554
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 547
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconPackage:Ljava/lang/String;

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconRes:I

    .line 556
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "parcel"

    .prologue
    .line 558
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 547
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconPackage:Ljava/lang/String;

    .line 548
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconRes:I

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 560
    .local v0, size:I
    if-lez v0, :cond_0

    .line 561
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mBitmapData:[B

    .line 562
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mBitmapData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 565
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 566
    if-lez v0, :cond_1

    .line 567
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mUri:Landroid/net/Uri;

    .line 570
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconPackage:Ljava/lang/String;

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconRes:I

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mPersonalId:J

    .line 573
    return-void
.end method

.method private clearIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 619
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconPackage:Ljava/lang/String;

    .line 620
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconRes:I

    .line 621
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mPersonalId:J

    .line 622
    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mBitmapData:[B

    .line 623
    iput-object v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mUri:Landroid/net/Uri;

    .line 624
    return-void
.end method

.method private getLargeIcon([B)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "data"

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 726
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    :try_start_0
    array-length v3, p1

    if-lez v3, :cond_0

    .line 727
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 728
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 734
    .end local v2           #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v0

    .line 730
    :catch_0
    move-exception v1

    .line 732
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HtcLSNotification"

    const-string v4, "getLargeIcon fail"

    invoke-static {v3, v4, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getLargeIconFromByte(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "context"
    .parameter "data"

    .prologue
    .line 738
    const/4 v1, 0x0

    .line 739
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->getLargeIcon([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 740
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 741
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 743
    .restart local v1       #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v1
.end method

.method private getLargeIconFromContact(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    .line 790
    const/4 v2, 0x0

    .line 791
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 793
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 794
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v4

    .line 796
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 797
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 798
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    move-object v2, v3

    .line 806
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz v4, :cond_1

    .line 807
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 814
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v2

    .line 810
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v5       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 811
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "HtcLSNotification"

    const-string v7, "getLargeIconFromContact close fail"

    invoke-static {v6, v7, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 801
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v1

    .line 802
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "HtcLSNotification"

    const-string v7, "getLargeIconFromContact fail"

    invoke-static {v6, v7, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 806
    if-eqz v4, :cond_1

    .line 807
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 810
    :catch_2
    move-exception v1

    .line 811
    const-string v6, "HtcLSNotification"

    const-string v7, "getLargeIconFromContact close fail"

    invoke-static {v6, v7, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 805
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 806
    if-eqz v4, :cond_2

    .line 807
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 812
    :cond_2
    :goto_1
    throw v6

    .line 810
    :catch_3
    move-exception v1

    .line 811
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "HtcLSNotification"

    const-string v8, "getLargeIconFromContact close fail"

    invoke-static {v7, v8, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getLargeIconFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 818
    const/4 v4, 0x0

    .line 819
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 821
    .local v6, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 823
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v7, "r"

    invoke-virtual {v1, p2, v7}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .line 824
    .local v3, fd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v3, :cond_0

    .line 825
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v6

    .line 827
    :cond_0
    if-eqz v6, :cond_1

    .line 828
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 829
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 830
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    move-object v4, v5

    .line 839
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    if-eqz v6, :cond_2

    .line 840
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 847
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #fd:Landroid/content/res/AssetFileDescriptor;
    :cond_2
    :goto_0
    return-object v4

    .line 843
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v3       #fd:Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v2

    .line 844
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "HtcLSNotification"

    const-string v8, "getLargeIconFromUri close fail"

    invoke-static {v7, v8, v2}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 834
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #fd:Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v2

    .line 835
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_2
    const-string v7, "HtcLSNotification"

    const-string v8, "getLargeIconFromUri fail"

    invoke-static {v7, v8, v2}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 839
    if-eqz v6, :cond_2

    .line 840
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 843
    :catch_2
    move-exception v2

    .line 844
    const-string v7, "HtcLSNotification"

    const-string v8, "getLargeIconFromUri close fail"

    invoke-static {v7, v8, v2}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 838
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 839
    if-eqz v6, :cond_3

    .line 840
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 845
    :cond_3
    :goto_1
    throw v7

    .line 843
    :catch_3
    move-exception v2

    .line 844
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "HtcLSNotification"

    const-string v9, "getLargeIconFromUri close fail"

    invoke-static {v8, v9, v2}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mBitmapData:[B

    invoke-direct {p0, v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->getLargeIcon([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getLargeIconDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_0

    .line 693
    const-string v1, "HtcLSNotification"

    const-string v2, "getLargeIconDrawable context is null"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v1, 0x0

    .line 708
    :goto_0
    return-object v1

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconPackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconRes:I

    if-lez v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconPackage:Ljava/lang/String;

    iget v2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconRes:I

    #calls: Lcom/htc/lockscreen/ntf/HtcLSNotification;->getIconFromPackage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v1, v2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->access$200(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 699
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mBitmapData:[B

    if-eqz v1, :cond_2

    .line 700
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mBitmapData:[B

    invoke-direct {p0, p1, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->getLargeIconFromByte(Landroid/content/Context;[B)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 702
    :cond_2
    if-nez v0, :cond_3

    iget-wide v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mPersonalId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 703
    iget-wide v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mPersonalId:J

    invoke-direct {p0, p1, v1, v2}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->getLargeIconFromContact(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 705
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 706
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mUri:Landroid/net/Uri;

    invoke-direct {p0, p1, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->getLargeIconFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_4
    move-object v1, v0

    .line 708
    goto :goto_0
.end method

.method public getLargeIconPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeIconResId()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconRes:I

    return v0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)V
    .locals 12
    .parameter "bitmap"

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->clearIcon()V

    .line 628
    const/4 v0, 0x0

    .line 629
    .local v0, data:[B
    const/4 v3, 0x0

    .line 631
    .local v3, ops:Ljava/io/ByteArrayOutputStream;
    if-eqz p1, :cond_2

    .line 632
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 633
    .local v8, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 634
    .local v2, height:I
    const-string v9, "HtcLSNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setLargeIcon width:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " height:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    mul-int v6, v8, v2

    .line 637
    .local v6, square:I
    const/16 v5, 0x64

    .line 638
    .local v5, quality:I
    const v9, 0x3d090

    if-le v6, v9, :cond_0

    .line 639
    const/16 v5, 0x50

    .line 641
    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 642
    .end local v3           #ops:Ljava/io/ByteArrayOutputStream;
    .local v4, ops:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v9, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    .line 643
    .local v7, success:Z
    if-eqz v7, :cond_1

    .line 644
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 645
    if-eqz v0, :cond_1

    .line 646
    const-string v9, "HtcLSNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setLargeIcon data size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    move-object v3, v4

    .line 655
    .end local v2           #height:I
    .end local v4           #ops:Ljava/io/ByteArrayOutputStream;
    .end local v5           #quality:I
    .end local v6           #square:I
    .end local v7           #success:Z
    .end local v8           #width:I
    .restart local v3       #ops:Ljava/io/ByteArrayOutputStream;
    :cond_2
    if-eqz v3, :cond_3

    .line 657
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 663
    :cond_3
    :goto_0
    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mBitmapData:[B

    .line 664
    return-void

    .line 658
    :catch_0
    move-exception v1

    .line 659
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "HtcLSNotification"

    const-string v10, "setLargeIcon close ops fail"

    invoke-static {v9, v10, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 651
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 652
    .restart local v1       #e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v9, "HtcLSNotification"

    const-string v10, "setLargeIcon fail"

    invoke-static {v9, v10, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 655
    if-eqz v3, :cond_3

    .line 657
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 658
    :catch_2
    move-exception v1

    .line 659
    const-string v9, "HtcLSNotification"

    const-string v10, "setLargeIcon close ops fail"

    invoke-static {v9, v10, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 655
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v3, :cond_4

    .line 657
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 660
    :cond_4
    :goto_3
    throw v9

    .line 658
    :catch_3
    move-exception v1

    .line 659
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v10, "HtcLSNotification"

    const-string v11, "setLargeIcon close ops fail"

    invoke-static {v10, v11, v1}, Lcom/htc/lockscreen/LSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 655
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #ops:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #height:I
    .restart local v4       #ops:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #quality:I
    .restart local v6       #square:I
    .restart local v8       #width:I
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #ops:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #ops:Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 651
    .end local v3           #ops:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #ops:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #ops:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #ops:Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method public setLargeIcon(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "resId"

    .prologue
    .line 667
    invoke-direct {p0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->clearIcon()V

    .line 668
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    .line 669
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconPackage:Ljava/lang/String;

    .line 670
    iput p2, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconRes:I

    .line 676
    :goto_0
    return-void

    .line 673
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconPackage:Ljava/lang/String;

    .line 674
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconRes:I

    goto :goto_0
.end method

.method public setLargeIconFromContact(J)V
    .locals 0
    .parameter "peopleId"

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->clearIcon()V

    .line 680
    iput-wide p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mPersonalId:J

    .line 682
    return-void
.end method

.method public setLargeIconFromURI(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 685
    invoke-direct {p0}, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->clearIcon()V

    .line 686
    iput-object p1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mUri:Landroid/net/Uri;

    .line 688
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flag"

    .prologue
    const/4 v2, 0x0

    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mBitmapData:[B

    if-eqz v1, :cond_1

    .line 585
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mBitmapData:[B

    array-length v0, v1

    .line 586
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    if-lez v0, :cond_0

    .line 588
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mBitmapData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 595
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 596
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 597
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 603
    :goto_1
    iget-object v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 604
    iget v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mLargeIconRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget-wide v1, p0, Lcom/htc/lockscreen/ntf/HtcLSNotification$LargeIcon;->mPersonalId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 606
    return-void

    .line 592
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 600
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
