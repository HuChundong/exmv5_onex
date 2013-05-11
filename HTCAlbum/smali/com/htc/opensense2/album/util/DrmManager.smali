.class public Lcom/htc/opensense2/album/util/DrmManager;
.super Ljava/lang/Object;
.source "DrmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/util/DrmManager$DRMActionActivityBroadcastReceiver;,
        Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;,
        Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;,
        Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;,
        Lcom/htc/opensense2/album/util/DrmManager$Columns;,
        Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;
    }
.end annotation


# static fields
.field public static final CONSTRAINT_COUNT:I = 0x0

.field public static final CONSTRAINT_DATE:I = 0x2

.field public static final CONSTRAINT_INTERVAL:I = 0x1

.field public static final DRM_REQ_SHOW_GIF_ANIMATED:I = 0x50

.field public static final DRM_REQ_SHOW_RIGHT:I = 0x30

.field public static final DRM_RESULT_CAN_DECODE:I = 0x10

.field public static final DRM_RESULT_CAN_NOT_DECODE:I = 0x20

.field public static final DRM_RESULT_DOWNLOAD_RIGHT:I = 0x60

.field public static final DRM_RESULT_NON_CHECK:I = 0x40

.field public static final DRM_TYPE_CD:I = 0x2

.field public static final DRM_TYPE_FL:I = 0x1

.field public static final DRM_TYPE_SD:I = 0x3

.field public static final DRM_VERIFY_RESULT_CODE:I = -0x1000

.field public static final REQUEST_CONTENT_IMAGE:I = 0x0

.field public static final REQUEST_CONTENT_UNKNOWN:I = -0x1

.field public static final REQUEST_CONTENT_VIDEO:I = 0x1

.field public static final STATE_DATE_NOT_SYNC:I = 0x3

.field public static final STATE_ERR:I = -0x1

.field public static final STATE_EXPIRE:I = 0x2

.field public static final STATE_NEED_DOWNLOAD_RIGHT:I = 0x1

.field public static final STATE_NO_RIGHT_ISSURE:I = -0x2

.field public static final STATE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrmManager"

.field private static mDownloadUris:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;",
            ">;"
        }
    .end annotation
.end field

.field private static mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

.field private static mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

.field private static mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

.field private static mProgressDlg:Lcom/htc/app/HtcProgressDialog;

.field private static mStatus:I

.field private static registerCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    sput-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 64
    sput-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 65
    sput-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 73
    sput-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDownloadUris:Ljava/util/concurrent/ConcurrentMap;

    .line 1306
    sput v1, Lcom/htc/opensense2/album/util/DrmManager;->mStatus:I

    .line 1307
    sput-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    .line 1318
    sput v1, Lcom/htc/opensense2/album/util/DrmManager;->registerCounter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    return-void
.end method

.method static synthetic access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput-object p0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput-object p0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    return-object p0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentMap;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDownloadUris:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$600()Lcom/htc/app/HtcProgressDialog;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput-object p0, Lcom/htc/opensense2/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    return-object p0
.end method

.method static synthetic access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    return-object v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    sput p0, Lcom/htc/opensense2/album/util/DrmManager;->mStatus:I

    return p0
.end method

.method public static consumeDrmImageRight(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 873
    const-string v0, "DrmManager"

    const-string v1, "consume image right"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    .line 894
    return-void
.end method

.method public static consumeDrmVideoRight(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 898
    const-string v0, "DrmManager"

    const-string v1, "consume video right"

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/provider/DrmStore;->consumeRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    .line 900
    return-void
.end method

.method private static createDialog(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
    .locals 2
    .parameter "ctx"
    .parameter "message"

    .prologue
    .line 214
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static createDialog(Landroid/content/Context;Ljava/lang/String;ILcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V
    .locals 3
    .parameter "ctx"
    .parameter "message"
    .parameter "mediaType"
    .parameter "listener"

    .prologue
    .line 631
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c9

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20401f2

    new-instance v2, Lcom/htc/opensense2/album/util/DrmManager$5;

    invoke-direct {v2, p3, p2}, Lcom/htc/opensense2/album/util/DrmManager$5;-><init>(Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;I)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x20401f3

    new-instance v2, Lcom/htc/opensense2/album/util/DrmManager$4;

    invoke-direct {v2, p3}, Lcom/htc/opensense2/album/util/DrmManager$4;-><init>(Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/opensense2/album/util/DrmManager$3;

    invoke-direct {v1, p3}, Lcom/htc/opensense2/album/util/DrmManager$3;-><init>(Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 671
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-static {v0}, Lcom/htc/opensense2/album/util/DrmManager;->showDlg(Lcom/htc/widget/HtcAlertDialog;)V

    .line 673
    return-void
.end method

.method public static deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 2
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 910
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/provider/DrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 912
    .local v0, result:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static deleteDrmFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2
    .parameter "content"
    .parameter "uri"

    .prologue
    .line 916
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 917
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Lcom/htc/opensense2/album/util/DrmManager;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method public static dismissDrmStateDlg()V
    .locals 1

    .prologue
    .line 1349
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 1350
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 1353
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 1355
    :cond_1
    return-void
.end method

.method private static getConstraintString(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)[Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "constraint"

    .prologue
    .line 725
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    .line 726
    .local v9, strDescription:[Ljava/lang/String;
    const-string v2, "MM/dd/yyyy kk:mm"

    .line 727
    .local v2, dateFormatString:Ljava/lang/String;
    const-wide/16 v6, -0x1

    .line 728
    .local v6, nCount:J
    const/4 v3, 0x0

    .line 729
    .local v3, dateStart:Ljava/util/Date;
    const/4 v1, 0x0

    .line 730
    .local v1, dateEnd:Ljava/util/Date;
    const-wide/16 v4, -0x1

    .line 731
    .local v4, lInterval:J
    if-eqz p1, :cond_3

    .line 732
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v10

    int-to-long v6, v10

    .line 733
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v3

    .line 734
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v1

    .line 735
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v4

    .line 736
    const-wide/16 v10, -0x1

    cmp-long v10, v6, v10

    if-eqz v10, :cond_0

    .line 737
    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 738
    const-string v10, "DrmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :cond_0
    if-eqz v3, :cond_1

    .line 756
    const/4 v10, 0x0

    invoke-static {p0, v3}, Lcom/htc/opensense2/album/util/DrmManager;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 757
    const-string v10, "DrmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "start date "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    :cond_1
    if-eqz v1, :cond_2

    .line 774
    const/4 v10, 0x1

    invoke-static {p0, v1}, Lcom/htc/opensense2/album/util/DrmManager;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 775
    const-string v10, "DrmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "end date "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_2
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-eqz v10, :cond_3

    .line 779
    const-wide/16 v10, 0x3e8

    div-long v10, v4, v10

    long-to-int v8, v10

    .line 781
    .local v8, sec:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 782
    .local v0, cal:Ljava/util/Calendar;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 783
    const/16 v10, 0xd

    invoke-virtual {v0, v10, v8}, Ljava/util/Calendar;->add(II)V

    .line 785
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/htc/opensense2/album/util/DrmManager;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 786
    const-string v10, "DrmManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "interval date "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v8           #sec:I
    :cond_3
    return-object v9
.end method

.method private static getConstraintType(Landroid/provider/DrmStore$DrmConstraint;)I
    .locals 10
    .parameter "constraint"

    .prologue
    const-wide/16 v8, -0x1

    .line 676
    const-wide/16 v5, -0x1

    .line 677
    .local v5, nCount:J
    const/4 v2, 0x0

    .line 678
    .local v2, dateStart:Ljava/util/Date;
    const/4 v1, 0x0

    .line 679
    .local v1, dateEnd:Ljava/util/Date;
    const-wide/16 v3, -0x1

    .line 680
    .local v3, lInterval:J
    const/4 v0, -0x1

    .line 681
    .local v0, constraintType:I
    if-eqz p0, :cond_3

    .line 682
    invoke-virtual {p0}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v7

    int-to-long v5, v7

    .line 683
    invoke-virtual {p0}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v2

    .line 684
    invoke-virtual {p0}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v1

    .line 685
    invoke-virtual {p0}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v3

    .line 686
    cmp-long v7, v5, v8

    if-eqz v7, :cond_0

    .line 687
    const/4 v0, 0x0

    .line 690
    :cond_0
    if-eqz v2, :cond_1

    .line 691
    const/4 v0, 0x2

    .line 694
    :cond_1
    if-eqz v1, :cond_2

    .line 695
    const/4 v0, 0x2

    .line 698
    :cond_2
    cmp-long v7, v3, v8

    if-eqz v7, :cond_3

    .line 699
    const/4 v0, 0x1

    .line 702
    :cond_3
    return v0
.end method

.method public static getConstranitStringType(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;[Ljava/lang/String;)I
    .locals 10
    .parameter "ctx"
    .parameter "image"
    .parameter "constraints"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 603
    if-nez p1, :cond_0

    .line 604
    const/4 v1, -0x1

    .line 627
    :goto_0
    return v1

    .line 605
    :cond_0
    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 606
    .local v3, mimeType:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    .line 607
    .local v5, uri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    .line 608
    .local v2, fileType:I
    const/4 v0, 0x0

    .line 609
    .local v0, constraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {v2}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->isImageFileType(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 610
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v9}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 623
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lcom/htc/opensense2/album/util/DrmManager;->getConstraintString(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)[Ljava/lang/String;

    move-result-object v4

    .line 624
    .local v4, res:[Ljava/lang/String;
    aget-object v6, v4, v8

    aput-object v6, p2, v8

    .line 625
    aget-object v6, v4, v7

    aput-object v6, p2, v7

    .line 626
    invoke-static {v0}, Lcom/htc/opensense2/album/util/DrmManager;->getConstraintType(Landroid/provider/DrmStore$DrmConstraint;)I

    move-result v1

    .line 627
    .local v1, constraintType:I
    goto :goto_0

    .line 611
    .end local v1           #constraintType:I
    .end local v4           #res:[Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    goto :goto_1

    .line 614
    :cond_3
    if-nez v2, :cond_1

    .line 616
    const-string v6, "image/bmp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 617
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v5, v9}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    goto :goto_1
.end method

.method public static getCurrentDrmVideoUri(Lcom/htc/opensense2/album/util/ImageManager$IImage;)Landroid/content/Intent;
    .locals 12
    .parameter "image"

    .prologue
    const/4 v2, 0x0

    .line 794
    if-nez p0, :cond_0

    .line 795
    const-string v9, "DrmManager"

    const-string v10, "you haven\'t set current drm file"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :goto_0
    return-object v2

    .line 798
    :cond_0
    instance-of v9, p0, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;

    if-nez v9, :cond_1

    .line 799
    const-string v9, "DrmManager"

    const-string v10, "your current image is not video type"

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v8, p0

    .line 803
    check-cast v8, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;

    .line 804
    .local v8, videoItem:Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentOffset()I

    move-result v4

    .line 805
    .local v4, nDataOffset:I
    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDataPath()Ljava/lang/String;

    move-result-object v6

    .line 806
    .local v6, strFilePath:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 807
    .local v1, contentId:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getBoundary()I

    move-result v0

    .line 808
    .local v0, boundary:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&drm_header_len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&drm_trailor_len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&sd_content_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 809
    .local v7, uriForPV:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, mimeType:Ljava/lang/String;
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 811
    .local v5, newUri:Landroid/net/Uri;
    const-string v9, "DrmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URI for PV:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mimeType "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    new-instance v2, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 813
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public static getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "date"

    .prologue
    .line 706
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 708
    const-string v0, "MM-dd-yyyy"

    .line 710
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 711
    .local v3, setting:Ljava/lang/String;
    const-string v4, "24"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 713
    .local v2, is24Hour:Z
    if-eqz v2, :cond_1

    .line 714
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kk:mm:ss"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 720
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 716
    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hh:mm:ss a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDateNonSyncMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 331
    const/4 v2, 0x0

    .line 332
    .local v2, rc:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 334
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 339
    :goto_0
    const v3, 0x20400ea

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 343
    :goto_1
    return-object v1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 340
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "This file is locked and cannot be unlocked."

    goto :goto_1
.end method

.method public static getDrmImageContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 825
    const/4 v8, 0x0

    .line 826
    .local v8, strFilePath:Ljava/lang/String;
    const/4 v7, 0x0

    .line 841
    .local v7, is:Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 842
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v9

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 843
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 846
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 847
    invoke-static {p0, p1, v8}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 848
    if-nez v7, :cond_1

    .line 849
    const-string v1, "DrmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRM image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " input stream is NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_1
    return-object v7
.end method

.method public static getDrmMessage(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "ctx"
    .parameter "state"
    .parameter "uri"
    .parameter "filePath"
    .parameter "title"
    .parameter "mimeType"
    .parameter "drmType"

    .prologue
    .line 255
    packed-switch p1, :pswitch_data_0

    .line 270
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 257
    :pswitch_1
    invoke-static {p0, p2, p4, p5, p6}, Lcom/htc/opensense2/album/util/DrmManager;->getSuccessMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :pswitch_2
    invoke-static {p0, p3, p6}, Lcom/htc/opensense2/album/util/DrmManager;->getExpireMessage(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 264
    :pswitch_3
    invoke-static {p0}, Lcom/htc/opensense2/album/util/DrmManager;->getDateNonSyncMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 267
    :pswitch_4
    invoke-static {p0, p3}, Lcom/htc/opensense2/album/util/DrmManager;->getNoRightIssureMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getDrmMessageDlg(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$DrmMedia;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 2
    .parameter "ctx"
    .parameter "state"
    .parameter "image"
    .parameter "listener"

    .prologue
    .line 249
    const-string v0, "DrmManager"

    const-string v1, "getDrmMessageDlg deprecated."

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 20
    .parameter "ctx"
    .parameter "uri"
    .parameter "appearDialog"

    .prologue
    .line 1177
    const-string v4, "DrmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check DRM state of content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const/4 v4, 0x0

    sput v4, Lcom/htc/opensense2/album/util/DrmManager;->mStatus:I

    .line 1179
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1180
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_data"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "title"

    aput-object v6, v5, v4

    const/4 v4, 0x2

    const-string v6, "mime_type"

    aput-object v6, v5, v4

    const/4 v4, 0x3

    const-string v6, "delivery_type"

    aput-object v6, v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1183
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 1184
    const/4 v4, -0x1

    .line 1303
    :goto_0
    return v4

    .line 1187
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1188
    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1189
    .local v17, title:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1190
    .local v15, mimeType:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1191
    .local v13, drmType:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1192
    if-eqz v15, :cond_1

    const/4 v4, -0x1

    if-ne v13, v4, :cond_2

    .line 1193
    :cond_1
    const/4 v4, -0x1

    goto :goto_0

    .line 1197
    :cond_2
    const/4 v4, 0x1

    if-ne v13, v4, :cond_3

    .line 1198
    const/4 v4, 0x0

    goto :goto_0

    .line 1200
    :cond_3
    const/16 v18, -0x1

    .line 1201
    .local v18, type:I
    const-string v4, "image"

    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1202
    const/16 v18, 0x0

    .line 1208
    :cond_4
    :goto_1
    move-object/from16 v12, p0

    .line 1209
    .local v12, cx:Landroid/content/Context;
    move-object/from16 v14, v17

    .line 1210
    .local v14, fileName:Ljava/lang/String;
    new-instance v19, Lcom/htc/opensense2/album/util/DrmManager$11;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v14}, Lcom/htc/opensense2/album/util/DrmManager$11;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1259
    .local v19, updateLicense:Landroid/provider/DrmStore$UpdateLicense;
    const/4 v10, 0x0

    .line 1260
    .local v10, constraint:Landroid/provider/DrmStore$DrmConstraint;
    if-eqz p2, :cond_7

    .line 1261
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v4, v2}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/provider/DrmStore$UpdateLicense;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v10

    .line 1270
    :goto_2
    if-nez v10, :cond_5

    .line 1271
    const-string v4, "DrmManager"

    const-string v5, "DRM state: constraint is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :cond_5
    if-nez v10, :cond_9

    const/4 v4, 0x3

    if-ne v13, v4, :cond_9

    sget v4, Lcom/htc/opensense2/album/util/DrmManager;->mStatus:I

    if-nez v4, :cond_9

    .line 1275
    const-string v4, "DrmManager"

    const-string v5, "DRM state: STATE_NEED_DOWNLOAD_RIGHT"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    const/4 v4, 0x1

    goto :goto_0

    .line 1203
    .end local v10           #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .end local v12           #cx:Landroid/content/Context;
    .end local v14           #fileName:Ljava/lang/String;
    .end local v19           #updateLicense:Landroid/provider/DrmStore$UpdateLicense;
    :cond_6
    const-string v4, "video"

    invoke-virtual {v15, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1204
    const/16 v18, 0x1

    goto :goto_1

    .line 1263
    .restart local v10       #constraint:Landroid/provider/DrmStore$DrmConstraint;
    .restart local v12       #cx:Landroid/content/Context;
    .restart local v14       #fileName:Ljava/lang/String;
    .restart local v19       #updateLicense:Landroid/provider/DrmStore$UpdateLicense;
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_8

    .line 1264
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v10

    goto :goto_2

    .line 1266
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, p1

    invoke-static {v4, v0, v5}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v10

    goto :goto_2

    .line 1277
    :cond_9
    if-nez v10, :cond_a

    const/4 v4, 0x3

    if-ne v13, v4, :cond_a

    sget v4, Lcom/htc/opensense2/album/util/DrmManager;->mStatus:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_a

    .line 1278
    const/4 v4, -0x2

    goto/16 :goto_0

    .line 1279
    :cond_a
    if-nez v10, :cond_b

    .line 1280
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 1284
    :cond_b
    if-eqz v10, :cond_c

    .line 1285
    invoke-virtual {v10}, Landroid/provider/DrmStore$DrmConstraint;->getConstraint()Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v11

    .line 1286
    .local v11, constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    if-nez v11, :cond_c

    .line 1287
    const-string v4, "DrmManager"

    const-string v5, "DRM state: constraint info is null"

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 1292
    .end local v11           #constraintInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    :cond_c
    move-object/from16 v0, p1

    invoke-static {v3, v10, v0}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v16

    .line 1293
    .local v16, result:I
    const-string v4, "DrmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check expiration DRM state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const/4 v4, -0x5

    move/from16 v0, v16

    if-ne v0, v4, :cond_d

    .line 1297
    const/4 v4, 0x3

    goto/16 :goto_0

    .line 1299
    :cond_d
    if-eqz v16, :cond_e

    .line 1300
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 1303
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static getDrmVideoContent(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 857
    const/4 v8, 0x0

    .line 858
    .local v8, strFilePath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 859
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v9

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 860
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 863
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 864
    invoke-static {p0, p1, v8}, Landroid/provider/DrmStore;->getDrmContentStream(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 865
    .local v7, is:Ljava/io/InputStream;
    if-nez v7, :cond_1

    .line 866
    const-string v1, "DrmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DRM video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " input stream is NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_1
    return-object v7
.end method

.method public static getDrmVideoFrame(Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "image"

    .prologue
    .line 171
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 172
    .local v1, mmr:Landroid/media/MediaMetadataRetriever;
    const/4 v3, 0x0

    .line 173
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 174
    .local v2, newUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDrmStateWithoutDialog()I

    move-result v4

    if-nez v4, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentOffset()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getContentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;->getBoundary()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 179
    if-nez v2, :cond_0

    .line 180
    const/4 v4, 0x0

    .line 197
    :goto_0
    return-object v4

    .line 189
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 191
    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 195
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_1
    move-object v4, v3

    .line 197
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "DrmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getDrmVideoFrame] Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4
.end method

.method public static getDrmVideoPlayUri(Ljava/lang/String;ILjava/lang/String;I)Landroid/net/Uri;
    .locals 5
    .parameter "dataPath"
    .parameter "offset"
    .parameter "contentId"
    .parameter "contentBoundary"

    .prologue
    .line 818
    move-object v0, p0

    .line 819
    .local v0, strFilePath:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/htcfs/oma-drm1-fs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&drm_header_len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&drm_trailor_len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sd_content_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, uriForPV:Ljava/lang/String;
    const-string v2, "DrmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI for PV:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private static getExpireMessage(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .parameter "filePath"
    .parameter "drmType"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, message:Ljava/lang/String;
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 323
    const v1, 0x2040207

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    .line 325
    :cond_0
    const v1, 0x2040205

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMediaType(Ljava/lang/String;)I
    .locals 3
    .parameter "mimeType"

    .prologue
    .line 228
    const/4 v1, -0x1

    .line 230
    .local v1, mediaType:I
    invoke-static {p0}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 231
    .local v0, fileType:I
    invoke-static {v0}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->isImageFileType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 232
    const/4 v1, 0x0

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 233
    :cond_1
    invoke-static {v0}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    :cond_2
    if-nez v0, :cond_0

    .line 238
    const-string v2, "image/bmp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getNoRightIssureMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "ctx"
    .parameter "filePath"

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 349
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 350
    .local v2, rc:Landroid/content/res/Resources;
    const v3, 0x20400ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 354
    .end local v2           #rc:Landroid/content/res/Resources;
    :goto_0
    if-eqz p1, :cond_0

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    :cond_0
    return-object v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "This file is locked and can not be unlocked."

    goto :goto_0
.end method

.method private static getSuccessMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .parameter "ctx"
    .parameter "uri"
    .parameter "title"
    .parameter "mimeType"
    .parameter "drmType"

    .prologue
    .line 276
    const/4 v7, 0x0

    invoke-static {p0, p1, v7}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v0

    .line 277
    .local v0, constraint:Landroid/provider/DrmStore$DrmConstraint;
    const/4 v2, 0x0

    .line 278
    .local v2, message:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/htc/opensense2/album/util/DrmManager;->getConstraintString(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)[Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, strConstraint:[Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/opensense2/album/util/DrmManager;->getConstraintType(Landroid/provider/DrmStore$DrmConstraint;)I

    move-result v1

    .line 300
    .local v1, constraintType:I
    const/4 v7, 0x1

    if-ne p4, v7, :cond_1

    .line 301
    const v7, 0x2040200

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 316
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 303
    :cond_1
    if-eqz v0, :cond_0

    const/4 v7, 0x0

    aget-object v7, v6, v7

    if-eqz v7, :cond_0

    .line 304
    if-nez v1, :cond_2

    .line 305
    const v7, 0x2040201

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v6, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 306
    :cond_2
    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    .line 307
    const v7, 0x2040202

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, v6, v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v6, v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 308
    :cond_3
    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    .line 309
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 310
    .local v4, ms:J
    const-wide/32 v7, 0xea60

    div-long v7, v4, v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, mins:Ljava/lang/String;
    const v7, 0x2040203

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isDrmContent(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public static isDrmContent(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 921
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 923
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 924
    const-string v3, "DrmManager"

    const-string v4, "couldn\'t get connectivity manager"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :cond_0
    const-string v3, "DrmManager"

    const-string v4, "network is not available"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 926
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 927
    .local v2, info:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 928
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 929
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 930
    const-string v3, "DrmManager"

    const-string v4, "network is available"

    invoke-static {v3, v4}, Lcom/htc/sunnyCore/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const/4 v3, 0x1

    goto :goto_0

    .line 928
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isPureFL(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Z
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public static onEnd()V
    .locals 1

    .prologue
    .line 1339
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    .line 1340
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->cancel()V

    .line 1343
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mDrmStateDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 1345
    :cond_1
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->unregisterRenewRightListener()V

    .line 1346
    return-void
.end method

.method public static registerRenewRightListener(Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 1321
    sget-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    if-eq v0, p0, :cond_0

    .line 1322
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    .line 1324
    :cond_0
    sput-object p0, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    .line 1325
    sget v0, Lcom/htc/opensense2/album/util/DrmManager;->registerCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/opensense2/album/util/DrmManager;->registerCounter:I

    .line 1326
    const-string v0, "DrmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][DrmManager][registerRenewRightListener]counter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/opensense2/album/util/DrmManager;->registerCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    return-void
.end method

.method public static renewRight(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 12
    .parameter "ctx"
    .parameter "uri"
    .parameter "filePath"

    .prologue
    .line 1094
    invoke-static {p0}, Lcom/htc/opensense2/album/util/DrmManager;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1097
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.htc"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 1099
    .local v5, rc:Landroid/content/res/Resources;
    const v8, 0x204016b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .end local v5           #rc:Landroid/content/res/Resources;
    :goto_0
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    if-eqz v8, :cond_0

    .line 1105
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    .line 1162
    :cond_0
    :goto_1
    return-void

    .line 1101
    :catch_0
    move-exception v2

    .line 1102
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "DrmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Show toast failed."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1110
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mDownloadUris:Ljava/util/concurrent/ConcurrentMap;

    if-nez v8, :cond_2

    .line 1111
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mDownloadUris:Ljava/util/concurrent/ConcurrentMap;

    .line 1113
    :cond_2
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mDownloadUris:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, p2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1115
    const-string v8, "DrmManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DRM rights in downloading. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    if-eqz v8, :cond_0

    .line 1117
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    goto :goto_1

    .line 1121
    :cond_3
    const-class v8, Lcom/htc/opensense2/album/util/DrmManager$DRMActionActivityBroadcastReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, p1, p2, v8}, Landroid/provider/DrmStore;->acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1122
    .local v1, duri:Landroid/net/Uri;
    if-nez v1, :cond_4

    .line 1124
    const-string v8, "DrmManager"

    const-string v9, "DRM acquireRights fails. No uri returned."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    invoke-interface {v8}, Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    goto :goto_1

    .line 1129
    :cond_4
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    if-eqz v8, :cond_5

    .line 1131
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v8}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1132
    const/4 v8, 0x0

    sput-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 1136
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1137
    .local v6, t:J
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mDownloadUris:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1139
    .local v4, key:Ljava/lang/String;
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mDownloadUris:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;

    .line 1140
    .local v0, data:Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;
    iget-wide v8, v0, Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;->mTicks:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x2bf20

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 1141
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mDownloadUris:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1144
    .end local v0           #data:Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;
    .end local v4           #key:Ljava/lang/String;
    :cond_7
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mDownloadUris:Ljava/util/concurrent/ConcurrentMap;

    new-instance v9, Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v1, v10, v11}, Lcom/htc/opensense2/album/util/DrmManager$DrmUriData;-><init>(Landroid/net/Uri;J)V

    invoke-interface {v8, p2, v9}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    new-instance v8, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v8, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    .line 1147
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x2040220

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1148
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1149
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    new-instance v9, Lcom/htc/opensense2/album/util/DrmManager$10;

    invoke-direct {v9, p2}, Lcom/htc/opensense2/album/util/DrmManager$10;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1159
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mProgressDlg:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v8}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 1161
    const-string v8, "DrmManager"

    const-string v9, "acquire drm rights."

    invoke-static {v8, v9}, Lcom/htc/sunnyCore/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private static setButtons(Lcom/htc/widget/HtcAlertDialog;[Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;)V
    .locals 7
    .parameter "dialog"
    .parameter "buttons"

    .prologue
    .line 222
    move-object v0, p1

    .local v0, arr$:[Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 223
    .local v1, button:Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;
    #getter for: Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;->buttonPosition:I
    invoke-static {v1}, Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;->access$000(Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;)I

    move-result v4

    #getter for: Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;->title:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;->access$100(Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;)Ljava/lang/String;

    move-result-object v5

    #getter for: Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;->listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v1}, Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;->access$200(Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v1           #button:Lcom/htc/opensense2/album/util/DrmManager$ButtonInfo;
    :cond_0
    return-void
.end method

.method private static setupButtons(Landroid/content/Intent;II)V
    .locals 3
    .parameter "intent"
    .parameter "state"
    .parameter "drmType"

    .prologue
    const/4 v1, 0x2

    const/16 v2, 0x20

    .line 398
    packed-switch p1, :pswitch_data_0

    .line 423
    :goto_0
    :pswitch_0
    return-void

    .line 400
    :pswitch_1
    const-string v0, "btn_count"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string v0, "btn_positive_msg"

    const v1, 0x20401f2

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    const-string v0, "btn_negative_msg"

    const v1, 0x20401f3

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 406
    :pswitch_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 407
    const-string v0, "btn_count"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    const-string v0, "btn_positive_msg"

    const v1, 0x2040206

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v0, "btn_negative_msg"

    const v1, 0x20401ee

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    const-string v0, "btn_positive_result_code"

    const/16 v1, 0x60

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    const-string v0, "btn_negative_result_code"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 413
    :cond_0
    const-string v0, "btn_count"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string v0, "btn_positive_msg"

    const v1, 0x2040174

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const-string v0, "btn_positive_result_code"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 420
    :pswitch_3
    const-string v0, "btn_positive_result_code"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static showDateNotSyncMsg(Landroid/content/Context;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 6
    .parameter "ctx"
    .parameter "listener"

    .prologue
    .line 547
    const/4 v2, 0x0

    .line 548
    .local v2, rc:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 550
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 555
    :goto_0
    const v3, 0x20400ea

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 561
    :goto_1
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00c9

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20401f2

    new-instance v5, Lcom/htc/opensense2/album/util/DrmManager$1;

    invoke-direct {v5, p1}, Lcom/htc/opensense2/album/util/DrmManager$1;-><init>(Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 556
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 557
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "This file is locked and cannot be unlocked."

    goto :goto_1
.end method

.method private static showDlg(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "dlg"

    .prologue
    .line 129
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 131
    :cond_0
    return-void
.end method

.method public static showDrmAlertActivity(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;I)V
    .locals 10
    .parameter "ctx"
    .parameter "state"
    .parameter "image"
    .parameter "orientation"

    .prologue
    .line 362
    move-object v7, p2

    check-cast v7, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .line 363
    .local v7, drmContent:Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;
    invoke-virtual {v7}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 364
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDataPath()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, filePath:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 367
    .local v5, mimeType:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v6

    .local v6, drmType:I
    move-object v0, p0

    move v1, p1

    .line 389
    invoke-static/range {v0 .. v6}, Lcom/htc/opensense2/album/util/DrmManager;->getDrmMessage(Landroid/content/Context;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 390
    .local v9, message:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 391
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v8, intent:Landroid/content/Intent;
    invoke-static {v8, p1, v6}, Lcom/htc/opensense2/album/util/DrmManager;->setupButtons(Landroid/content/Intent;II)V

    .line 393
    invoke-static {p0, v9, p3, v8}, Lcom/htc/opensense2/album/util/DrmManager;->startDrmRightActivity(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 395
    .end local v8           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static showDrmContentDetails(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter "context"
    .parameter "image"

    .prologue
    .line 150
    return-void
.end method

.method public static showExpireMessage(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V
    .locals 11
    .parameter "ctx"
    .parameter "image"
    .parameter "listener"

    .prologue
    .line 945
    instance-of v8, p0, Landroid/app/Activity;

    if-nez v8, :cond_0

    .line 946
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Context must be Activity"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 948
    :cond_0
    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDataPath()Ljava/lang/String;

    move-result-object v4

    .line 949
    .local v4, filename:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v1

    .line 950
    .local v1, drmType:I
    invoke-virtual {p1}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 951
    .local v6, mimeType:Ljava/lang/String;
    const/4 v5, -0x1

    .line 953
    .local v5, mediaType:I
    invoke-static {v6}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    .line 954
    .local v3, fileType:I
    invoke-static {v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->isImageFileType(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 955
    const/4 v5, 0x0

    .line 968
    :cond_1
    :goto_0
    move v2, v5

    .line 969
    .local v2, fileMediaType:I
    const/4 v8, 0x3

    if-ne v1, v8, :cond_5

    .line 970
    const v8, 0x2040207

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 975
    .local v7, msg:Ljava/lang/String;
    :goto_1
    const/4 v8, 0x3

    if-ne v1, v8, :cond_6

    .line 976
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 978
    :cond_2
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a00c9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x2040206

    new-instance v10, Lcom/htc/opensense2/album/util/DrmManager$8;

    invoke-direct {v10, p0, p2, v2, v4}, Lcom/htc/opensense2/album/util/DrmManager$8;-><init>(Landroid/content/Context;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;ILjava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x20401ee

    new-instance v10, Lcom/htc/opensense2/album/util/DrmManager$7;

    invoke-direct {v10, p2}, Lcom/htc/opensense2/album/util/DrmManager$7;-><init>(Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/htc/opensense2/album/util/DrmManager$6;

    invoke-direct {v9, p2}, Lcom/htc/opensense2/album/util/DrmManager$6;-><init>(Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1068
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    sput-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    .line 1069
    sget-object v8, Lcom/htc/opensense2/album/util/DrmManager;->mDrmExpireDlg:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 1091
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :goto_2
    return-void

    .line 956
    .end local v2           #fileMediaType:I
    .end local v7           #msg:Ljava/lang/String;
    :cond_3
    invoke-static {v3}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->isVideoFileType(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 957
    const/4 v5, 0x1

    goto :goto_0

    .line 959
    :cond_4
    if-nez v3, :cond_1

    .line 961
    const-string v8, "image/bmp"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 962
    const/4 v5, 0x0

    goto :goto_0

    .line 972
    .restart local v2       #fileMediaType:I
    :cond_5
    const v8, 0x2040205

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #msg:Ljava/lang/String;
    goto :goto_1

    .line 1071
    :cond_6
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a00c9

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x2040174

    new-instance v10, Lcom/htc/opensense2/album/util/DrmManager$9;

    invoke-direct {v10, p2}, Lcom/htc/opensense2/album/util/DrmManager$9;-><init>(Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v8, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_2
.end method

.method public static showMessage(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V
    .locals 20
    .parameter "ctx"
    .parameter "state"
    .parameter "image"
    .parameter "listener"

    .prologue
    .line 426
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 427
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string v17, "Context must be Activity"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 429
    :cond_0
    const/16 v16, 0x2

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 430
    :cond_1
    const-string v16, "DrmManager"

    const-string v17, "show expiration dialog"

    invoke-static/range {v16 .. v17}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    check-cast p2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/htc/opensense2/album/util/DrmManager;->showExpireMessage(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V

    .line 542
    :cond_2
    :goto_0
    return-void

    .line 435
    .restart local p2
    :cond_3
    const/16 v16, 0x3

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 436
    const-string v16, "DrmManager"

    const-string v17, "show date not sync dialog"

    invoke-static/range {v16 .. v17}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/DrmManager;->showDateNotSyncMsg(Landroid/content/Context;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 441
    :cond_4
    const/16 v16, -0x2

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 442
    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 443
    .local v8, filePath:Ljava/lang/String;
    const-string v16, "DrmManager"

    const-string v17, "show no issuer dialog"

    invoke-static/range {v16 .. v17}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v8, v1}, Lcom/htc/opensense2/album/util/DrmManager;->showNoRightIssue(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 455
    .end local v8           #filePath:Ljava/lang/String;
    :cond_5
    if-nez p1, :cond_2

    .line 456
    const-string v16, "DrmManager"

    const-string v17, "show confirmed decrypt dialog"

    invoke-static/range {v16 .. v17}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v15

    .line 458
    .local v15, strTitle:Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v14

    .line 459
    .local v14, strFilePath:Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getMimeType()Ljava/lang/String;

    move-result-object v11

    .line 460
    .local v11, mimeType:Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 461
    .local v3, completeUri:Landroid/net/Uri;
    const/4 v10, -0x1

    .line 462
    .local v10, mediaType:I
    const/4 v7, -0x1

    .line 463
    .local v7, drmType:I
    const/4 v4, 0x0

    .line 464
    .local v4, constraint:Landroid/provider/DrmStore$DrmConstraint;
    invoke-static {v11}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v9

    .line 465
    .local v9, fileType:I
    invoke-static {v9}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->isImageFileType(I)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 466
    const/4 v10, 0x0

    .line 467
    check-cast p2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v7

    .line 470
    move-object/from16 v0, p0

    invoke-static {v0, v3, v14}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v4

    .line 495
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 496
    .local v6, drmInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/provider/DrmStore$DrmConstraint;->getConstraint()Landroid/drm/mobile1/DrmConstraintInfo;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/drm/mobile1/DrmConstraintInfo;->isNoConstraint()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 500
    if-eqz p3, :cond_2

    .line 501
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;->onDrmItemClick(I)V

    goto :goto_0

    .line 471
    .end local v6           #drmInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    .restart local p2
    :cond_7
    invoke-static {v9}, Lcom/htc/wrap/android/media/HtcWrapMediaFile;->isVideoFileType(I)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 472
    const/4 v10, 0x1

    .line 473
    check-cast p2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v7

    .line 476
    move-object/from16 v0, p0

    invoke-static {v0, v3, v14}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v4

    goto :goto_1

    .line 478
    .restart local p2
    :cond_8
    if-nez v9, :cond_6

    .line 480
    const-string v16, "image/bmp"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 481
    const/4 v10, 0x0

    .line 482
    check-cast p2, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;->getDrmType()I

    move-result v7

    .line 485
    move-object/from16 v0, p0

    invoke-static {v0, v3, v14}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v4

    goto :goto_1

    .line 505
    .restart local v6       #drmInfo:Landroid/drm/mobile1/DrmConstraintInfo;
    :cond_9
    const/4 v12, 0x0

    .line 506
    .local v12, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/htc/opensense2/album/util/DrmManager;->getConstraintString(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)[Ljava/lang/String;

    move-result-object v13

    .line 507
    .local v13, strConstraint:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/opensense2/album/util/DrmManager;->getConstraintType(Landroid/provider/DrmStore$DrmConstraint;)I

    move-result v5

    .line 509
    .local v5, constraintType:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_b

    .line 510
    const v16, 0x2040200

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 539
    :cond_a
    :goto_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v12, v10, v1}, Lcom/htc/opensense2/album/util/DrmManager;->createDialog(Landroid/content/Context;Ljava/lang/String;ILcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V

    goto/16 :goto_0

    .line 512
    :cond_b
    if-eqz v4, :cond_a

    const/16 v16, 0x0

    aget-object v16, v13, v16

    if-eqz v16, :cond_a

    .line 513
    if-nez v5, :cond_e

    .line 514
    const/16 v16, 0x0

    aget-object v16, v13, v16

    const-string v17, "1"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 515
    const v16, 0x2040208

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 518
    :cond_c
    sget-boolean v16, Lcom/htc/opensense2/album/AlbumCommon/Constants;->FLAG_DRM_COUNTBASE_ALWAYS_CONFIRM:Z

    if-eqz v16, :cond_d

    .line 520
    const v16, 0x2040201

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aget-object v19, v13, v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 524
    :cond_d
    if-eqz p3, :cond_2

    .line 526
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;->onDrmItemClick(I)V

    goto/16 :goto_0

    .line 532
    :cond_e
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v5, v0, :cond_f

    .line 533
    const v16, 0x2040202

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aget-object v19, v13, v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x1

    aget-object v19, v13, v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 534
    :cond_f
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_a

    .line 535
    const v16, 0x2040204

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    aget-object v19, v13, v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2
.end method

.method private static showNoRightIssue(Landroid/content/Context;Ljava/lang/String;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;
    .locals 6
    .parameter "ctx"
    .parameter "fileName"
    .parameter "listener"

    .prologue
    .line 576
    const/4 v1, 0x0

    .line 578
    .local v1, message:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 579
    .local v2, rc:Landroid/content/res/Resources;
    const v3, 0x20400ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 583
    .end local v2           #rc:Landroid/content/res/Resources;
    :goto_0
    if-eqz p1, :cond_0

    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    :cond_0
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00c9

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x20401f2

    new-instance v5, Lcom/htc/opensense2/album/util/DrmManager$2;

    invoke-direct {v5, p2}, Lcom/htc/opensense2/album/util/DrmManager$2;-><init>(Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    return-object v3

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "This file is locked and can not be unlocked."

    goto :goto_0
.end method

.method private static startDrmRightActivity(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 2
    .parameter "ctx"
    .parameter "message"
    .parameter "orientation"
    .parameter "intent"

    .prologue
    .line 203
    if-nez p3, :cond_0

    .line 204
    new-instance p3, Landroid/content/Intent;

    .end local p3
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 206
    .restart local p3
    :cond_0
    const-string v0, "message"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v0, "orientation"

    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    const-string v0, "com.htc.album"

    const-string v1, "com.htc.album.TabPluginDevice.DrmRightAlertActivity"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    check-cast p0, Landroid/app/Activity;

    .end local p0
    const/16 v0, 0x30

    invoke-virtual {p0, p3, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 210
    return-void
.end method

.method public static unregisterRenewRightListener()V
    .locals 3

    .prologue
    .line 1330
    sget v0, Lcom/htc/opensense2/album/util/DrmManager;->registerCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/htc/opensense2/album/util/DrmManager;->registerCounter:I

    if-nez v0, :cond_0

    .line 1332
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense2/album/util/DrmManager;->mListener:Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    .line 1334
    :cond_0
    const-string v0, "DrmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][DrmManager][unregisterRenewRightListener]counter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/opensense2/album/util/DrmManager;->registerCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunnyCore/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    return-void
.end method

.method public static verifyOnActivityResult(I)Z
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method
