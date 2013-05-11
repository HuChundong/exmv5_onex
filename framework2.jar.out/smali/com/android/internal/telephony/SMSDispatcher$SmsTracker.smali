.class public final Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SmsTracker"
.end annotation


# instance fields
.field public final mAppPackage:Ljava/lang/String;

.field public mConcatDest:Ljava/lang/String;

.field public mConcatRef:I

.field public mCount:I

.field public final mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public mDate:I

.field public final mDeliveryIntent:Landroid/app/PendingIntent;

.field public final mDestAddress:Ljava/lang/String;

.field public mFirstOfAll:Z

.field public mLastOfAll:Z

.field public mMessageId:I

.field public mMessageRef:I

.field public mRawPdu:[B

.field public mRecipient:Ljava/lang/String;

.field public mRetryCount:I

.field public final mSentIntent:Landroid/app/PendingIntent;

.field public mSequence:I

.field public mTpMrForRetry:I


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "appPackage"
    .parameter "destAddr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2964
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2943
    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTpMrForRetry:I

    .line 2965
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2966
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 2967
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 2968
    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 2970
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppPackage:Ljava/lang/String;

    .line 2971
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 2973
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFirstOfAll:Z

    .line 2974
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mLastOfAll:Z

    .line 2976
    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatRef:I

    .line 2977
    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCount:I

    .line 2978
    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSequence:I

    .line 2980
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatDest:Ljava/lang/String;

    .line 2981
    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDate:I

    .line 2984
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRecipient:Ljava/lang/String;

    .line 2985
    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRawPdu:[B

    .line 2986
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageId:I

    .line 2988
    return-void
.end method


# virtual methods
.method protected isMultipart()Z
    .locals 2

    .prologue
    .line 2995
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2996
    .local v0, map:Ljava/util/HashMap;
    const-string v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
