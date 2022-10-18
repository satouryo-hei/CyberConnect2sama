//---------------------------------------
// 壁の処理(メイン)
//Author:佐藤　瞭平
//---------------------------------------
#include"wall.h"
#include"renderer.h"
#include"manager.h"
#include"texture.h"
#include"player.h"

//=============================================================================
// コンストラクタ
//=============================================================================
CWall::CWall(PRIORITY Priority) : CScene3D(PRIORITY_SECOND)
{
	m_pos = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
	m_rot = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
}

//=============================================================================
// デストラクタ
//=============================================================================
CWall::~CWall()
{

}

//=============================================================================
// 壁の生成処理
//=============================================================================
CWall *CWall::Create(const D3DXVECTOR3 pos, const D3DXVECTOR3 size, const D3DXVECTOR3 Rot)
{
	// 壁のポインターの生成(NULL状態)
	CWall* pWall = NULL;

	// 動的メモリの確保
	pWall = new CWall;

	// NULLチェック
	if (pWall != NULL)
	{
		// 壁の向きを設定
		pWall->m_rot = Rot;
		// 壁の初期化処理の呼び出し
		pWall->Init(pos, size);
		// テクスチャの設定
		pWall->BindTextuer(0);
	}
	return pWall;
}

//=============================================================================
//壁の初期化処理
//=============================================================================
HRESULT CWall::Init(D3DXVECTOR3 pos, D3DXVECTOR3 Size)
{
	m_pos = pos;
	m_size = Size;

	// 継承元の初期化を呼び出す
	CScene3D::Init(pos, Size, m_rot);

	return S_OK;
}	// ポリゴンの初期化処理終了



	//=============================================================================
	// 壁の終了処理
	//=============================================================================
void CWall::Uninit(void)
{
	// 継承元の終了処理を呼び出す
	CScene3D::Uninit();

	// 解放処理
	Release();

}// ポリゴンの終了処理終了


 //=============================================================================
 // 壁の更新処理
 //=============================================================================
void CWall::Update(void)
{

	////=============================================================================
	//// 自機の弾と敵の当たり判定
	////=============================================================================
	//for (int nPriority = 0; nPriority < PRIORITY_MAX; nPriority++)
	//{
	//	CScene * pScene = NULL;

	//	pScene = CScene::GetScene(nPriority);

	//	if (pScene != NULL)
	//	{
	//		if (nPriority == CScene::PRIORITY_PLAYER)
	//		{
	//			CPlayer *pPlayer = (CPlayer*)pScene;

	//			if (m_pos.x - (m_size.x / 2) <= pPlayer->GetPos().x &&
	//				m_pos.x + (m_size.x / 2) >= pPlayer->GetPos().x &&
	//				m_pos.y - (m_size.y / 2) <= pPlayer->GetPos().y &&
	//				m_pos.y + (m_size.y / 2) >= pPlayer->GetPos().y &&
	//				m_pos.z - (m_size.z / 2) <= pPlayer->GetPos().z &&
	//				m_pos.z + (m_size.z / 2) >= pPlayer->GetPos().z)
	//			{
	//				if (m_pos.x - (m_size.x / 2) <= pPlayer->GetPos().x&&
	//					m_pos.x + (m_size.x / 2) >= pPlayer->GetPos().x&&
	//					m_pos.y - (m_size.y / 2) <= pPlayer->GetPos().y&&
	//					m_pos.y + (m_size.y / 2) >= pPlayer->GetPos().y&&
	//					m_pos.z - (m_size.z / 2) <= pPlayer->GetPos().z &&
	//					m_pos.z + (m_size.z / 2) >= pPlayer->GetPos().z)
	//				{
	//					return;
	//				}
	//			}
	//		}
	//	}	
	//}

	// 継承元の更新処理を呼び出す
	CScene3D::Update();

}// ポリゴンの更新処理終了


 //=============================================================================
 // 壁の描画処理
 //=============================================================================
void CWall::Draw(void)
{
	// 継承元の描画処理を呼び出す
	CScene3D::Draw();

}	// ポリゴンの描画処理終了