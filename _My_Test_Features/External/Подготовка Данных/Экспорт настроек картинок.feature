#language: ru
@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: экспорт настроек картинок

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

@ТипШага: Инициатор данных
@Описание: экспорт настроек картинок
@ПримерИспользования: Когда экспорт настроек картинок
Сценарий: экспорт настроек картинок

	И я проверяю или создаю для справочника "IntegrationSettings" объекты:
		| 'Ref'                                                                         | 'DeletionMark' | 'Code' | 'Description'     | 'ExternalDataProc'                                                         | 'IntegrationType'                       | 'ExternalDataProcSettings'              | 'UniqueID'                          |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b772dbcd8801bc7611ec420177a49494' | 'False'        | 6      | 'PICTURE STORAGE' | ''                                                                         | 'Enum.IntegrationType.LocalFileStorage' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | '_36d36d012c85476bb8c949c91d827ca3' |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b772dbcd8801bc7611ec420177a49495' | 'False'        | 7      | 'PREWIEV STORAGE' | ''                                                                         | 'Enum.IntegrationType.LocalFileStorage' | 'ValueStorage:AQEIAAAAAAAAAO+7v3siVSJ9' | '_12cc678b0b994421bb04d9dbd7e04a7f' |

	И я перезаполняю для объекта табличную часть "ConnectionSetting":
		| 'Ref'                                                                         | 'Key'         | 'Value'                               |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b772dbcd8801bc7611ec420177a49494' | 'AddressPath' | 'C:\\Users\\Seramiti\\Documents\\Source'  |
		| 'e1cib/data/Catalog.IntegrationSettings?ref=b772dbcd8801bc7611ec420177a49495' | 'AddressPath' | 'C:\\Users\\Seramiti\\Documents\\Preview' |

	И я перезаполняю константу "DefaultPictureStorageVolume" значением "e1cib/data/Catalog.FileStorageVolumes?ref=b772dbcd8801bc7611ec420177a49496"

	И я проверяю или создаю для справочника "FileStorageVolumes" объекты:

		| 'Ref'                                                                        | 'DeletionMark' | 'Code' | 'Description'             | 'FilesType'              | 'POSTIntegrationSettings'                                                     | 'GETIntegrationSettings'                                                      |
		| 'e1cib/data/Catalog.FileStorageVolumes?ref=b772dbcd8801bc7611ec420177a49496' | 'False'        | 1      | 'DEFAULT PICTURE STORAGE' | 'Enum.FileTypes.Picture' | 'e1cib/data/Catalog.IntegrationSettings?ref=b772dbcd8801bc7611ec420177a49494' | 'e1cib/data/Catalog.IntegrationSettings?ref=b772dbcd8801bc7611ec420177a49494' |

	