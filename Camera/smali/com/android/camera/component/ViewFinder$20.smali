.class synthetic Lcom/android/camera/component/ViewFinder$20;
.super Ljava/lang/Object;
.source "ViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$CameraStartMode:[I

.field static final synthetic $SwitchMap$com$android$camera$RecordingState:[I

.field static final synthetic $SwitchMap$com$android$camera$TakingPictureState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/camera/RecordingState;->values()[Lcom/android/camera/RecordingState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$RecordingState:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$RecordingState:[I

    sget-object v1, Lcom/android/camera/RecordingState;->Preparing:Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$RecordingState:[I

    sget-object v1, Lcom/android/camera/RecordingState;->Ready:Lcom/android/camera/RecordingState;

    invoke-virtual {v1}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    invoke-static {}, Lcom/android/camera/TakingPictureState;->values()[Lcom/android/camera/TakingPictureState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$TakingPictureState:[I

    :try_start_2
    sget-object v0, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$TakingPictureState:[I

    sget-object v1, Lcom/android/camera/TakingPictureState;->Preparing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$TakingPictureState:[I

    sget-object v1, Lcom/android/camera/TakingPictureState;->Ready:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$TakingPictureState:[I

    sget-object v1, Lcom/android/camera/TakingPictureState;->Reviewing:Lcom/android/camera/TakingPictureState;

    invoke-virtual {v1}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    invoke-static {}, Lcom/android/camera/CameraStartMode;->values()[Lcom/android/camera/CameraStartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$CameraStartMode:[I

    :try_start_5
    sget-object v0, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$CameraStartMode:[I

    sget-object v1, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/camera/component/ViewFinder$20;->$SwitchMap$com$android$camera$CameraStartMode:[I

    sget-object v1, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    invoke-virtual {v1}, Lcom/android/camera/CameraStartMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
