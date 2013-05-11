.class final Lcom/htc/util/calendar/FacebookImageAsyncHelper$HtcWorkerArgs;
.super Ljava/lang/Object;
.source "FacebookImageAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/calendar/FacebookImageAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HtcWorkerArgs"
.end annotation


# instance fields
.field public m_context:Landroid/content/Context;

.field public m_cookie:Ljava/lang/Object;

.field public m_defaultResource:I

.field public m_info:Lcom/android/internal/telephony/CallerInfo;

.field public m_listener:Lcom/htc/util/calendar/FacebookImageAsyncHelper$OnHtcImageLoadCompleteListener;

.field public m_result:Ljava/lang/Object;

.field public m_url:Ljava/lang/String;

.field public m_view:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/util/calendar/FacebookImageAsyncHelper$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/util/calendar/FacebookImageAsyncHelper$HtcWorkerArgs;-><init>()V

    return-void
.end method
