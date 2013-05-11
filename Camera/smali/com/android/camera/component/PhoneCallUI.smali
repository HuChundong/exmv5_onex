.class public Lcom/android/camera/component/PhoneCallUI;
.super Lcom/android/camera/component/UIComponent;
.source "PhoneCallUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/PhoneCallUI$8;,
        Lcom/android/camera/component/PhoneCallUI$ContactIconDrawable;,
        Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;
    }
.end annotation


# static fields
.field public static final ACTION_CAMCORDER:Ljava/lang/String; = "com.htc.camera.intent.action.CAMCORDER"

.field public static final ACTION_INCOMING_CALL_FOR_CAMERA:Ljava/lang/String; = "com.htc.intent.action.INCOMING_CALL_FOR_CAMERA"

.field public static final EXTRA_REC:Ljava/lang/String; = "com.htc.camera.intent.extra.rec"

.field private static final MSG_GOT_CALLER_CONTENT:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "PhoneCallUI"


# instance fields
.field private final isAnswerPhoneCall:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyOwnerKey:Ljava/lang/Object;

.field private m_AnswerDialog:Lcom/htc/widget/HtcAlertDialog;

.field private m_ContactBmp:Landroid/graphics/Bitmap;

.field private m_ContactIconDrawable:Lcom/android/camera/component/PhoneCallUI$ContactIconDrawable;

.field private m_DialogHandle:Lcom/android/camera/Handle;

.field private m_DialogView:Landroid/view/View;

.field private m_IsPhoneListenStarted:Z

.field private m_incomingNumber:Ljava/lang/String;

.field private m_nCurCallState:I

.field private m_phoneStateListener:Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;

.field private m_txtCallerName:Ljava/lang/String;

.field private m_txtCallerNum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "PhoneCallUI"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput v2, p0, Lcom/android/camera/component/PhoneCallUI;->m_nCurCallState:I

    iput-boolean v2, p0, Lcom/android/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/PhoneCallUI;->mPropertyOwnerKey:Ljava/lang/Object;

    new-instance v0, Lcom/android/camera/component/PhoneCallUI$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/PhoneCallUI$1;-><init>(Lcom/android/camera/component/PhoneCallUI;)V

    iput-object v0, p0, Lcom/android/camera/component/PhoneCallUI;->m_phoneStateListener:Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;

    const-string v0, "PhoneCallUI.isAnswerPhoneCall"

    iget-object v1, p0, Lcom/android/camera/component/PhoneCallUI;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PhoneCallUI;->isAnswerPhoneCall:Lcom/android/camera/property/Property;

    return-void
.end method

.method private InternalendCall()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI;->isAnswerPhoneCall:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/component/PhoneCallUI;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/PhoneCallUI;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/PhoneCallUI;->m_nCurCallState:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/component/PhoneCallUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/PhoneCallUI;->m_nCurCallState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/component/PhoneCallUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PhoneCallUI;->closePopupObjects()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/PhoneCallUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PhoneCallUI;->InternalendCall()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/component/PhoneCallUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PhoneCallUI;->answerCall()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/component/PhoneCallUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PhoneCallUI;->endCall()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/component/PhoneCallUI;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/PhoneCallUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PhoneCallUI;->m_incomingNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/PhoneCallUI;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/PhoneCallUI;->getCallerContentBackgroundWorker(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/PhoneCallUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/PhoneCallUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/component/PhoneCallUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/component/PhoneCallUI;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI;->m_ContactBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/PhoneCallUI;)Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI;->m_phoneStateListener:Lcom/htc/wrap/android/telephony/HtcWrapPhoneStateListener;

    return-object v0
.end method

.method private answerCall()V
    .locals 4

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "answerCall"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/PhoneCallUI;->isAnswerPhoneCall:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/PhoneCallUI;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/service/HtcTelephonyManager;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "interceptKeyTq: CALL key-down while rining: Answer the call"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/service/HtcTelephonyManager;->showIncallScreen()V

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/service/HtcTelephonyManager;->answerRingingCall()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "answerCall but not rinning"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException from getPhoneInterface()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private closePopupObjects()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/component/PhoneCallUI;->m_DialogHandle:Lcom/android/camera/Handle;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/PhoneCallUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IRotateDialogManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/PhoneCallUI;->m_DialogHandle:Lcom/android/camera/Handle;

    invoke-virtual {v0, v1}, Lcom/android/camera/IRotateDialogManager;->hideDialog(Lcom/android/camera/Handle;)V

    :cond_1
    iput-object v2, p0, Lcom/android/camera/component/PhoneCallUI;->m_DialogHandle:Lcom/android/camera/Handle;

    iget-object v1, p0, Lcom/android/camera/component/PhoneCallUI;->m_ContactBmp:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/PhoneCallUI;->m_ContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iput-object v2, p0, Lcom/android/camera/component/PhoneCallUI;->m_ContactBmp:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private endCall()V
    .locals 6

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "endCall"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/service/HtcTelephonyManager;->htcCdmaEndCall()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "htcCdmaEndCall()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/service/HtcTelephonyManager;->performEndCall()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "RemoteException from getPhoneInterface()"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCallerContentBackgroundWorker(Ljava/lang/String;)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "PhoneCallPopUpBackgroundWorker()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;-><init>(Lcom/android/camera/component/PhoneCallUI;Ljava/lang/String;)V

    const-class v2, Lcom/android/camera/ISharedBackgroundWorker;

    invoke-virtual {p0, v2}, Lcom/android/camera/component/PhoneCallUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ISharedBackgroundWorker;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/camera/ISharedBackgroundWorker;->enqueueTask(Ljava/lang/Runnable;)Lcom/android/camera/Handle;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/component/PhoneCallUI$GetCallerContentThread;->run()V

    :cond_1
    return-void
.end method

.method private setupPropertyChangedCallbacks()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PhoneCallUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PhoneCallUI$2;-><init>(Lcom/android/camera/component/PhoneCallUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/PhoneCallUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PhoneCallUI$3;-><init>(Lcom/android/camera/component/PhoneCallUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/PhoneCallUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PhoneCallUI$4;-><init>(Lcom/android/camera/component/PhoneCallUI;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PhoneCallUI;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method public getCallerContent(Ljava/lang/String;)V
    .locals 12

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallerContent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/component/PhoneCallUI;->m_txtCallerName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/component/PhoneCallUI;->m_txtCallerNum:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/camera/component/PhoneCallUI;->m_ContactBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "getCallerContent query"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/PhoneCallUI;->m_txtCallerName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/component/PhoneCallUI;->m_txtCallerName:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberTypeShortString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/component/PhoneCallUI;->m_txtCallerNum:Ljava/lang/String;

    :cond_0
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    if-nez v9, :cond_2

    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "input stream is null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "produce photo"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_3

    iput-object v11, p0, Lcom/android/camera/component/PhoneCallUI;->m_ContactBmp:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "Throwable"

    invoke-static {v3, v4, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "null photoBmp"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    :cond_5
    if-nez v7, :cond_6

    :try_start_4
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "cursor null"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor.getCount():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/PhoneCallUI;->phoneCallPopUp(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/PhoneCallUI;->isAnswerPhoneCall:Lcom/android/camera/property/Property;

    iget-object v2, v0, Lcom/android/camera/HTCCamera;->isAnswerPhoneCall:Lcom/android/camera/property/Property;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/PhoneCallUI;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "Camera_Application_hashCode"

    invoke-static {}, Lcom/android/camera/CameraApplication;->current()Lcom/android/camera/CameraApplication;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/camera/component/PhoneCallUI;->setupPropertyChangedCallbacks()V

    return-void
.end method

.method public phoneCallPopUp(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_incomingNumber:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_IsPhoneListenStarted:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_nCurCallState:I

    if-eq v8, v10, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ignore popup, contentPhoneNum:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",m_incomingNumber"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/component/PhoneCallUI;->m_incomingNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "phoneCallPopUp"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v8, 0x7f030023

    invoke-virtual {v2, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    const v9, 0x7f0800d3

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_ContactBmp:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    new-instance v8, Lcom/android/camera/component/PhoneCallUI$ContactIconDrawable;

    invoke-virtual {p0}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/camera/component/PhoneCallUI$ContactIconDrawable;-><init>(Lcom/android/camera/component/PhoneCallUI;Landroid/content/res/Resources;)V

    iput-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_ContactIconDrawable:Lcom/android/camera/component/PhoneCallUI$ContactIconDrawable;

    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_ContactIconDrawable:Lcom/android/camera/component/PhoneCallUI$ContactIconDrawable;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    const v9, 0x7f0800d4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    const v9, 0x7f0800d5

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_txtCallerName:Ljava/lang/String;

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_txtCallerName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_txtCallerNum:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v7, Lcom/android/camera/component/PhoneCallUI$5;

    invoke-direct {v7, p0}, Lcom/android/camera/component/PhoneCallUI$5;-><init>(Lcom/android/camera/component/PhoneCallUI;)V

    new-instance v5, Lcom/android/camera/component/PhoneCallUI$6;

    invoke-direct {v5, p0}, Lcom/android/camera/component/PhoneCallUI$6;-><init>(Lcom/android/camera/component/PhoneCallUI;)V

    new-instance v6, Lcom/android/camera/component/PhoneCallUI$7;

    invoke-direct {v6, p0}, Lcom/android/camera/component/PhoneCallUI$7;-><init>(Lcom/android/camera/component/PhoneCallUI;)V

    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/camera/component/PhoneCallUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a025e

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/component/PhoneCallUI;->m_DialogView:Landroid/view/View;

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a025f

    invoke-virtual {v8, v9, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0260

    invoke-virtual {v8, v9, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/widget/HtcAlertDialog;

    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v8, v6}, Lcom/htc/widget/HtcAlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const-class v8, Lcom/android/camera/IRotateDialogManager;

    invoke-virtual {p0, v8}, Lcom/android/camera/component/PhoneCallUI;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IRotateDialogManager;

    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_AnswerDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0, v8, v11, v10}, Lcom/android/camera/IRotateDialogManager;->showDialog(Landroid/app/Dialog;Landroid/content/DialogInterface$OnDismissListener;Z)Lcom/android/camera/Handle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_DialogHandle:Lcom/android/camera/Handle;

    goto/16 :goto_0

    :cond_2
    const v8, 0x20800d1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/camera/component/PhoneCallUI;->m_txtCallerNum:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v9, "onDeleteClicked() -  Cannot find IRotateDialogManager interface"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
