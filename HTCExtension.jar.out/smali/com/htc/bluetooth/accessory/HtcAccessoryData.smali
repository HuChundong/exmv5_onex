.class public Lcom/htc/bluetooth/accessory/HtcAccessoryData;
.super Ljava/lang/Object;
.source "HtcAccessoryData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/bluetooth/accessory/HtcAccessoryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmdId:I

.field private mData:[B

.field private mDataLen:I

.field private mDev:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/htc/bluetooth/accessory/HtcAccessoryData$1;

    invoke-direct {v0}, Lcom/htc/bluetooth/accessory/HtcAccessoryData$1;-><init>()V

    sput-object v0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/BluetoothDevice;[B)V
    .locals 1
    .parameter "cmdId"
    .parameter "device"
    .parameter "out"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mCmdId:I

    .line 33
    iput-object p3, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mData:[B

    .line 34
    if-nez p3, :cond_0

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mDataLen:I

    .line 38
    :goto_0
    iput-object p2, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mDev:Landroid/bluetooth/BluetoothDevice;

    .line 39
    return-void

    .line 37
    :cond_0
    array-length v0, p3

    iput v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mDataLen:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mDev:Landroid/bluetooth/BluetoothDevice;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mCmdId:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mDataLen:I

    .line 45
    iput-object v1, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mData:[B

    .line 46
    iget v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mDataLen:I

    if-eqz v0, :cond_0

    .line 47
    iget v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mDataLen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mData:[B

    .line 48
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getCommand()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mCmdId:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mData:[B

    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mDev:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mDev:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    iget v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mCmdId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mDataLen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/htc/bluetooth/accessory/HtcAccessoryData;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 72
    return-void
.end method
