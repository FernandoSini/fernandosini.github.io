'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon%203.png": "5dcef449791fa27946b3d35ad8803796",
"favicon%202.png": "5dcef449791fa27946b3d35ad8803796",
"version.json": "b4d64d285387fa70b6aade7a27cc67f3",
"index.html": "18105c24eb3c86e9e5b8350e0923dfc3",
"/": "18105c24eb3c86e9e5b8350e0923dfc3",
"main.dart%203.js": "a14cffb1ff729ad8e633392759b14585",
"main.dart.js": "cab2d1df6af3491acae9927b4c6db55b",
"main.dart%202.js": "83b0782657ddf7a0f094c7204b803bf4",
"manifest%204.json": "82825481eacf8766e28de445ded23799",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192%203.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-192%202.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-192%204.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512%204.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-512%203.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-512%202.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "82825481eacf8766e28de445ded23799",
".git/ORIG_HEAD": "73243fc63bbc5b1f432779bff0ddbe0e",
".git/config": "0d3d04b7c776d68f18fc7aea1284ce4e",
".git/objects/61/52e1ca585eebb219f3366713993b1b37ae290f": "3b338e272ae0ba07f9fcf9adcc8b5810",
".git/objects/66/2c06e3efce4c2c6c5df6e972f22a9daf9d7288": "a67e5e5ebd631fc91cddb13f5ac8914d",
".git/objects/66/83352d9e09e3a6287ba2590dfe61d02e5040fd": "0f64595ca2f780a2cfb3924a16ce245e",
".git/objects/3e/26d7be63d961b6eb9b44c558ee3c856971ccd0": "dbdb20565910b0e28f78ae558b28499b",
".git/objects/3e/7b62f43ea2a52be080829dda3f9aa8d4a0cbb5": "15f636effcd51930c0f6ef232eb4be5d",
".git/objects/50/07f6b06dd3cba258471a823799bf605dc058e5": "62af5df3e04b2667618351a2c568b3f5",
".git/objects/50/5f9681e95e0d6e38119b8c6a749258838c2872": "f25143b7a047faeaa65561b071ad01d0",
".git/objects/57/c387a73b57b38f4e3c919bcbc5dec8065885f9": "2ed1df765fd948a7ea503abf8efad161",
".git/objects/3b/e104f12b63fd293d32825d681ede6efe75c0b5": "98646800cb9be0b705a27f40f6c69086",
".git/objects/6f/07bddd36dbb2de225cc2d5f9344ca681f85bef": "2a2b422b0ec59854702f09cbc1a3f7f8",
".git/objects/6f/b9b69abec35e39013035f5c84ad6f49aaa9da6": "545567f5e52f71181eb681342b235def",
".git/objects/9e/ded0af0357daf4d3805ae3f54c3e08f7e9a2a7": "bf6df3e3622c5d311358cfb73e020a66",
".git/objects/04/4ca850b8dec48efe4076178be1b698b2cc4758": "e978222b648bcbe2ce9a61d45e0b1fde",
".git/objects/32/46ad559eeae0370195978eaed83f1053ee13fd": "a043dbc0a0bda96ce2127799ccc27506",
".git/objects/35/66c744d9702f0e4986033249488d7025264482": "d298382ccd6e3d0a45152e280792c3d1",
".git/objects/67/7cd567500f0eb23fcf382b63a9bbbe44a14b78": "255b7c5ab27254ef36c782c51efc1c33",
".git/objects/67/0fcb1c5840326595a94780d5f26bcec11a912e": "a4265c0b76dd61679a3396cbf82deb6a",
".git/objects/93/4ac914808aa955c33fd2e4b0a2162394e5673e": "92ac04506b0f09db6879c2da32e3a4d4",
".git/objects/94/cb540835ced1a855ee2c0b3395ba1b4db0853c": "a526df4bd9f348f3ee37fdb5e0716cc0",
".git/objects/0e/5d8955b03f8a3a9c4dccd681d127f54309b190": "d362470bb02420a0b9ca42fd8d12ff3f",
".git/objects/5f/8ccf35a1e3ee3cdaaeff4944720c601975be17": "241bf8d21b0de0aee10a7df2218d4917",
".git/objects/33/83a9703af7d83d6be33e05ae1428d7b189246b": "8fdbdf19e4d3da6e7f6e37b840f344cf",
".git/objects/9d/cbb43298757c32d1759576a1d671e59e0dc740": "09d859196f1f05845b4bfc1fa922665d",
".git/objects/02/8c464bea85ef857e370661e7d74ebbe5ca8edd": "9900be0d4bbe9689babed5ca061e4a2b",
".git/objects/b2/6be6c0ec16596fe45be9e1d650c7b41eed84b7": "343cd3d6c2e347c992cfb1b2bad16008",
".git/objects/b2/9375517c916bdc0529d904d7aeaca127a69359": "84252394319a74b13bda55d1809f8f96",
".git/objects/ac/4be380a8d0959b44531240c6272f9b1a1b4db5": "3a231557432cf67521c9798c4122fa7a",
".git/objects/ad/ca2903bf848674fa743d941ae062e5b73075f8": "c265e4045238f29ac6fd1b17d6e833ff",
".git/objects/d0/0ec0001b09fa9b28d0e92478633e8155d41441": "ac24cbc6126d078ca6e9ac5a2f964903",
".git/objects/da/f7f521fb99ddfeb7a848baf2e201743ccb5546": "186e940511ec98481897358bae71d020",
".git/objects/da/5117bc0e0e9144900f487de3ac5cc5e923646f": "9b004858a871542f9c1ad4874cc11943",
".git/objects/bd/6f802f13ca21587727bfc7090fa1f28a006e33": "56d0913726191fc35f014b4f75e6106d",
".git/objects/d1/ef536845e0522503c24b67bf21cee4d159deb8": "65d4d6838f2a6a480499439cafd8bc15",
".git/objects/bc/069895a6dc50bdcac7f64bf25e2a5d423c7f64": "204361c54d4bc02afb8f3aa213a7716b",
".git/objects/e5/951dfb943474a56e611d9923405cd06c2dd28d": "c6fa51103d8db5478e1a43a661f6c68d",
".git/objects/e5/abf103eb3503f42fa8afc4ec1e1881ad31b063": "315be4f78b1798ba1c16751c66081cd8",
".git/objects/f5/f5d247185ad1894d3caa1a8bd45a3eb30683fd": "308c471ab14acad14d36d89481beb376",
".git/objects/f5/94c57c51d3c18fad230acf3fbfa15d1ad12ec7": "54a197e6be92b67143a92286660f5fce",
".git/objects/e3/426c62093ad73548b0248803e73eb6b8424910": "016bc677e354618a92241428c1837ce9",
".git/objects/e4/deea78de1bc902462f4391b96fd2c5fbe7ad1f": "31369cc17763a4788469ba8474e931da",
".git/objects/ed/518ab0d9620d356518c4b45b48308adf0e4aa5": "5cfcb173a790871f6978806a215eb35a",
".git/objects/c6/20ddaf96f50b4196d433f081b32d119f274f29": "7b99ed418eabbb35dddbe990ab3a3f8d",
".git/objects/ec/1dc9383b7bf28ff3a21dcfc4127895697494c8": "620d3f70ad76b21a405eccaf386186a7",
".git/objects/20/a1fd2b372aa0ca3969f4d7c35cfbbaa9ac7457": "557c08e6d1f23797553b47ef98e1fd04",
".git/objects/20/5bb5db271c6d8de8399864c7bb9b917f638893": "c993b22f115d7f3ae6d5b7b212806539",
".git/objects/27/752c4be787ebb069f3d2843d6596a7d6543380": "5fab5774a1a5e2e8d9213651028159a7",
".git/objects/7c/f50c54b57403e8e3ff092d87e7d965b01227d0": "e06c63b7b5a76d0d6a5e36475ee8615b",
".git/objects/42/2c0f8230d4a2e2d2e6dfc8b4f53c46c82394ec": "0afdb967dee99d2d50dfda553872a016",
".git/objects/42/1fad4ba86c5bb150ee18746abd1ac61b8cdb8c": "0564f67dffee0b6a0ed85424cdd3d98d",
".git/objects/73/c2b5939a8096c263c660a4ba9717e9478078e0": "6cc1a05e3d9f67a570966c038ee5e8a5",
".git/objects/80/62c6a5b26e847f513ed4847a2ff890b5304f0a": "4d3d79a85dc8b2e1617f37ad6fdd654a",
".git/objects/8a/3849a91a0049d2f1132f402eeb0996ea86c1f6": "18e16433545e91b7bf7038a18436eca3",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/26/ae0aa3bac1aa316ff611d01e08b2bb74b574e9": "670c66eb011b01ed70a73ffd76c06687",
".git/objects/21/12ff11e2d938ab6b8fb1132a1cd7c6b21487cd": "db7ef340e01ff12a506f8ac04930b35d",
".git/objects/81/c77c74999ec3509768618b4fcc80ad11ae30ba": "e39ae46bf78d048ed270e9115e935f5d",
".git/objects/44/6383ee63c14368b73fc7b32b6b104da9b26d51": "08f3b11a9e9b51964b8af99c2967648b",
".git/objects/2f/a7cc9836abc45679a85cdef8d1eb415bd24852": "fe21776db01cef4503f1bf06008ea24c",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/00/6a0979e31f686e04b5a7f1fbe8eee2ccef6f85": "7e4f0ad960a54bab6b1a8a4d393cce39",
".git/objects/9a/313bf21314dd3a61f4912c734ce63779073652": "1c9c9d9342f8521c67b6ad43b98c149a",
".git/objects/36/10194fbe1956b03cba0b036f66970254f889f3": "e62b84335587874b975e65644393c443",
".git/objects/09/3e3e1678484dac9c1613110515e9a96c8c6231": "28f941bbf7619c0570eb67b34a1e98d2",
".git/objects/98/f9339f2c91b4818bf86dc372a0872810e80696": "77bac43c821e7317fdaf6c03f2f6f43d",
".git/objects/3f/3569227f290ec95dad565384fd7cc66298139c": "b5fb72b9e5fb0ff3af54891eaf77d20f",
".git/objects/5e/fff58a2163519d420fd1b21ed411b0f3ea6af1": "11faf1fe3fbad21fc0555b6ce4d53085",
".git/objects/37/0cfc24a0c18b1784bf04dbb287fa67740ff6ef": "3da7b2f50bc1c2e598e397d65670a27e",
".git/objects/37/24eb1704d7e1e2dc8ce1483c944e98152b2183": "4d4e93d4862a8a290614497dbcfe0b55",
".git/objects/37/bcded7b81f2c674810e249bcb7f46d504192e1": "5752cb3e08d68245f348d68e83cc59f0",
".git/objects/08/fd45471b659599ed05f65e2ac74bbb44c06be7": "f651230fec585b389b2dcf7c78a52038",
".git/objects/08/2ee85228684a06a2cd2ae04ba1942095f86640": "ab79bac3f188a8a8267f971bef4b87ed",
".git/objects/01/738e25d900aee226c8fd956af5c3783e715e9b": "29696fec5388737c9761351c95c06950",
".git/objects/55/90820e139a8f7b53488e15455b8a8c79caae8a": "7505e87f6473accaf867d6958e7085b9",
".git/objects/0f/810c9d297fff1ae64b08d881250f2276423b72": "0772f10d6619611d1b6bc49caad2c8bf",
".git/objects/0a/71d552b672ae5d0abd7a9b28fd9b6162dfb320": "e8d6519183890037e502b4346d78a412",
".git/objects/bf/8f2e7c27d71779c5650c510bd88afe507bc2a0": "6b5c2a15ccdd9abf6924fa76080cd2f1",
".git/objects/a0/7dce4f4f1f09a2fd6600c1c89dd1705e2778bc": "0c5650e56f421f473ad0e224229c29d4",
".git/objects/b6/39e9378b1c17886059b168b5ab48abfc367b57": "225dd885a4ff0609b7cb0e2e619815ae",
".git/objects/b6/a28389fc3ee5bf98e75a52072d218cf1476063": "f302c75a454a8fd247fcc769eda8426a",
".git/objects/b6/2734495ff9208473f1d6a960e637c05facadc0": "a0c0ffe7add439000ee1d486cbf92a75",
".git/objects/a9/4419c9fbdf0a4b536000e9c631a855d6cba829": "f12f654106c96153f4f01059f8d171a4",
".git/objects/aa/199f772f7a53ce3f30300c0201ed79ae74cdb6": "5f0972364573ac73be2543e699ba767c",
".git/objects/b7/d579abd1f4f537cc146bba7ed6ddff13139429": "00a4d8646955379339bfd9bc22ae9ef2",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/db/32db5a4d6f3328784eec5dc9aeb2eca55a8254": "d6306d8e4bbcbbd5ab5bf461e9b84178",
".git/objects/a8/beffd3ad4fe54d6cabccf83a05477d6a986cd0": "6677888e4a051c7838b5b240c09f0981",
".git/objects/a6/11907ee04f8c62ebcac4e2e1402b7cf27998f9": "7466b100879f230eff78e25b1f8fdee6",
".git/objects/a6/0c41fa541e01314207653f49961ed66aab5788": "f138eb7b4322d5b8c17809fa8c68c063",
".git/objects/a1/3837a12450aceaa5c8e807c32e781831d67a8f": "bfe4910ea01eb3d69e9520c3b42a0adf",
".git/objects/a1/6d26338d777f2ca94778915ec027de9236dbbe": "559593bf9413ccf9412aa8f0b6f3ac4b",
".git/objects/ef/ab0c4bc5ec30dd82ca39f9d35f20baf0b28fb8": "8c9306501d777ad9d5398aba0ff90420",
".git/objects/c4/d2dc6235bceb95e16b1b04a7e407f539d7fc25": "2f811eb70416f96c9a90583a5b7cbf3d",
".git/objects/e1/caf329274d90567949496f1ed521a2de144bfb": "99c60406cf23aea4dbdc076f2914bb96",
".git/objects/e1/b75b7a4780d825b6f7647edd6d0eaecfa11193": "6747b9f9e945560799367d07069acc42",
".git/objects/cd/e3f8e7130bd329522eb914e51419263b903d34": "e073b3770f225381762bcf70741b3e75",
".git/objects/e6/97e09057167cd27cc8c7d355eed777012eb0f8": "7a942eddad4c0dbadb8a721bf06c7b67",
".git/objects/f9/8d779b5a080fec75933e700f0d93a8d7036f36": "4262c77ae5a45cb6e4a9f294b3e3956f",
".git/objects/c5/dcfed0dbce4136041612a26f6de5a08bdd352c": "a7fa141a393a47b934307245eee14aad",
".git/objects/f1/6c6a15b37b4400291131974fa5e5baa7ae9c75": "b67db0b870d462a786ad7a81863875c5",
".git/objects/ce/295d482fad10a609094dee045fec800d3c8751": "ea17bacec712cecc7e24581ae748dc6e",
".git/objects/ce/33dbabac3dc50e147d8c6fd750520da33ae7e4": "b371bc64cb7153291e7a8286766f7bd3",
".git/objects/46/9ecd2894efd3a8e5e7a3bd9225fca881aba39d": "02935c290108e2a8c109e8d549ccd785",
".git/objects/2c/640f6fe361828c35dc07af0cad586a2bdf472c": "fed3ddc9b9e938d88c8961ac035dea45",
".git/objects/79/ba7ea0836b93b3f178067bcd0a0945dbc26b3f": "f3e31aec622d6cf63f619aa3a6023103",
".git/objects/79/f77d706091b78b373f2580e5c6b2aa593a78e3": "75ab8ef783d452cafbe258b9c8adacbd",
".git/objects/41/847197ddfb818348066fd24a28924ee2b90bf2": "a08e757ea32b0ce4baa7d8a40f234ee2",
".git/objects/41/fcb915a2e0e663885c2ca6276b156d0b7dbe50": "9f22cb49b9f52b8e62bac82b5ab85ae0",
".git/objects/48/217617005575345943d8460b76c03381fed224": "6eb02af7684e2da217c7c7aea938335e",
".git/objects/70/4193eac10a8532cdf087596b94f792efef88c6": "2d938bf0fcb286ea3a48c3cba4f2829b",
".git/objects/1e/2cc77b0e154df97fae9b2b06e070a36072a2b0": "ae43275ec625324c5e56edbbaec701bc",
".git/objects/24/6a35dd17f83250479b32a79e1246ffab693a81": "bbba3d0e7bec157ee8d81ab12f38d1e6",
".git/objects/8d/32d8878dec162e57c8ef076573c5fa56042823": "c83727c7952e1f0e60bf254f9271d666",
".git/objects/8d/79159b7180b23fe74b2477d0025b8362cc0879": "e3dd38f9ecba717c08eaef022fa47260",
".git/objects/8c/8cfdcf436a3d346b1bc97bead891feea940df1": "38a7735484cd6b18845ce562fb8ed3fc",
".git/objects/1c/389eba1e8e731436e477f84154f27cded74596": "ff1b53b65cf217d3b2c03540ad8515e0",
".git/objects/82/505ae85c1dd41886de6965f6878d992e6c04b3": "29e478c05ccf5897d7188c2c11141034",
".git/objects/40/1d19911e57dc93e7b7618bafa07b7d464860aa": "aabf26c368a862e1dd30a7882d73c10f",
".git/objects/2b/38c2a79c31c1fbd3e001d670cd7da520e34678": "cb82270bab66d029b6c2bd9f1e2f25a1",
".git/objects/47/593e2f16fc32f66d9811d605211c03ccc7253a": "c2c9e22c0e2e3340bde4f738df28e1d0",
".git/objects/47/b027651a122c04fb00d7b3877391b918742a0b": "a7e7eb5c0e49127895ec17ce0a106f01",
".git/objects/78/20a8722366a881eb2f430654f33d57b8cc163d": "60885425744598b64cf34aae830c718a",
".git/objects/8e/4947b89fb3a169b444afafc91107e52f68f009": "baaa1c5023b7697491ca03875e848b83",
".git/objects/8e/807acaf9799dbf75c28650dd890bbf9f2d9648": "fa8adbd17d181f655666ca1c1d78136c",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "38ce1f6d7b8b4d203f4795c5cf3b96f6",
".git/logs/refs/heads/master": "1e278feb7987fc19c03190b8cc83fe9c",
".git/logs/refs/heads/main": "4258bca27aa87b92336f4454645102b0",
".git/logs/refs/remotes/origin/main": "64657e0579e0a728bed8216ce1453a22",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "ea587b0fae70333bce92257152996e70",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/refs/heads/master": "73243fc63bbc5b1f432779bff0ddbe0e",
".git/refs/heads/main": "855c59b9b60e46c3127fb006706198a8",
".git/refs/remotes/origin/main": "855c59b9b60e46c3127fb006706198a8",
".git/index": "e4a9ac01430f5e90426a3878e2157edf",
".git/COMMIT_EDITMSG": "f68dbcf1c8bf23b1ca09ae01f35cd3a6",
".git/index%202": "38e800d0b3a8a58c3d2b2e3fa571aa12",
"manifest%202.json": "82825481eacf8766e28de445ded23799",
"assets/images/SaoPauloLogo%202.png": "e9ffe18bac83ce6a5f7041db00f63aa4",
"assets/images/SaoPauloLogo%203.png": "e9ffe18bac83ce6a5f7041db00f63aa4",
"assets/images/SaoPauloLogo.png": "e9ffe18bac83ce6a5f7041db00f63aa4",
"assets/images/eu.jpeg": "952f1a34258bbd344d403fbd52dba174",
"assets/images/eu%202.jpeg": "952f1a34258bbd344d403fbd52dba174",
"assets/AssetManifest.json": "21813209223d198625d97336ae8c53a6",
"assets/NOTICES": "580e55c3c31e959c140a07089418d5d7",
"assets/FontManifest.json": "e3637cec141ff037b4151edf1c0411cb",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/cupertino_icons/assets/CupertinoIcons%202.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/fluttericon/lib/fonts/Octicons.ttf": "7242d2fe9e36eb4193d2bc7e521779bf",
"assets/packages/fluttericon/lib/fonts/FontAwesome5%203.ttf": "221b27a41202ddd33990e299939e4504",
"assets/packages/fluttericon/lib/fonts/Iconic%202.ttf": "34e12214307f5f7cf7bc62086fbf55a3",
"assets/packages/fluttericon/lib/fonts/Maki.ttf": "9ecdcd7d24a2461a55d532b86b2740bd",
"assets/packages/fluttericon/lib/fonts/FontAwesome5%202.ttf": "221b27a41202ddd33990e299939e4504",
"assets/packages/fluttericon/lib/fonts/Typicons%204.ttf": "3386cae1128e52caf268508d477fb660",
"assets/packages/fluttericon/lib/fonts/Linecons%204.ttf": "2d0ac407ed11860bf470cb01745fb144",
"assets/packages/fluttericon/lib/fonts/Meteocons%204.ttf": "8b9c7982496155bb39c67eaf2a243731",
"assets/packages/fluttericon/lib/fonts/Brandico.ttf": "791921e9b25210e2551b6eda3f86c733",
"assets/packages/fluttericon/lib/fonts/Entypo.ttf": "58edfaf27b1032ea4778b69297c02b5a",
"assets/packages/fluttericon/lib/fonts/Typicons%203.ttf": "3386cae1128e52caf268508d477fb660",
"assets/packages/fluttericon/lib/fonts/Typicons%202.ttf": "3386cae1128e52caf268508d477fb660",
"assets/packages/fluttericon/lib/fonts/Fontelico.ttf": "3a1e1cecf0a3eae6be5cba3677379ba2",
"assets/packages/fluttericon/lib/fonts/Linecons%202.ttf": "2d0ac407ed11860bf470cb01745fb144",
"assets/packages/fluttericon/lib/fonts/Meteocons%202.ttf": "8b9c7982496155bb39c67eaf2a243731",
"assets/packages/fluttericon/lib/fonts/Meteocons%203.ttf": "8b9c7982496155bb39c67eaf2a243731",
"assets/packages/fluttericon/lib/fonts/Iconic.ttf": "34e12214307f5f7cf7bc62086fbf55a3",
"assets/packages/fluttericon/lib/fonts/Linecons%203.ttf": "2d0ac407ed11860bf470cb01745fb144",
"assets/packages/fluttericon/lib/fonts/Fontelico%203.ttf": "3a1e1cecf0a3eae6be5cba3677379ba2",
"assets/packages/fluttericon/lib/fonts/ModernPictograms%203.ttf": "5046c536516be5b91c15eb7795e0352d",
"assets/packages/fluttericon/lib/fonts/Brandico%202.ttf": "791921e9b25210e2551b6eda3f86c733",
"assets/packages/fluttericon/lib/fonts/Entypo%202.ttf": "58edfaf27b1032ea4778b69297c02b5a",
"assets/packages/fluttericon/lib/fonts/LineariconsFree.ttf": "276b1d61e45eb9b2dde9482545d9e3ac",
"assets/packages/fluttericon/lib/fonts/Brandico%203.ttf": "791921e9b25210e2551b6eda3f86c733",
"assets/packages/fluttericon/lib/fonts/Fontelico%202.ttf": "3a1e1cecf0a3eae6be5cba3677379ba2",
"assets/packages/fluttericon/lib/fonts/ModernPictograms%202.ttf": "5046c536516be5b91c15eb7795e0352d",
"assets/packages/fluttericon/lib/fonts/Octicons%203.ttf": "7242d2fe9e36eb4193d2bc7e521779bf",
"assets/packages/fluttericon/lib/fonts/WebSymbols%204.ttf": "4fd66aa74cdc6e5eaff0ec916ac269c6",
"assets/packages/fluttericon/lib/fonts/Octicons%202.ttf": "7242d2fe9e36eb4193d2bc7e521779bf",
"assets/packages/fluttericon/lib/fonts/WebSymbols%203.ttf": "4fd66aa74cdc6e5eaff0ec916ac269c6",
"assets/packages/fluttericon/lib/fonts/Zocial%203.ttf": "c29d6e34d8f703a745c6f18d94ce316d",
"assets/packages/fluttericon/lib/fonts/RpgAwesome.ttf": "99232001effca5cf2b5aa92cc3f3e892",
"assets/packages/fluttericon/lib/fonts/Typicons.ttf": "3386cae1128e52caf268508d477fb660",
"assets/packages/fluttericon/lib/fonts/FontAwesome.ttf": "799bb4e5c577847874f20bd0e9b38a9d",
"assets/packages/fluttericon/lib/fonts/Zocial%202.ttf": "c29d6e34d8f703a745c6f18d94ce316d",
"assets/packages/fluttericon/lib/fonts/WebSymbols%202.ttf": "4fd66aa74cdc6e5eaff0ec916ac269c6",
"assets/packages/fluttericon/lib/fonts/FontAwesome%202.ttf": "799bb4e5c577847874f20bd0e9b38a9d",
"assets/packages/fluttericon/lib/fonts/Zocial.ttf": "c29d6e34d8f703a745c6f18d94ce316d",
"assets/packages/fluttericon/lib/fonts/WebSymbols.ttf": "4fd66aa74cdc6e5eaff0ec916ac269c6",
"assets/packages/fluttericon/lib/fonts/FontAwesome%203.ttf": "799bb4e5c577847874f20bd0e9b38a9d",
"assets/packages/fluttericon/lib/fonts/Linecons.ttf": "2d0ac407ed11860bf470cb01745fb144",
"assets/packages/fluttericon/lib/fonts/RpgAwesome%204.ttf": "99232001effca5cf2b5aa92cc3f3e892",
"assets/packages/fluttericon/lib/fonts/FontAwesome5.ttf": "221b27a41202ddd33990e299939e4504",
"assets/packages/fluttericon/lib/fonts/Elusive.ttf": "23f24df0388819e94db2b3c19841841c",
"assets/packages/fluttericon/lib/fonts/LineariconsFree%202.ttf": "276b1d61e45eb9b2dde9482545d9e3ac",
"assets/packages/fluttericon/lib/fonts/LineariconsFree%203.ttf": "276b1d61e45eb9b2dde9482545d9e3ac",
"assets/packages/fluttericon/lib/fonts/RpgAwesome%202.ttf": "99232001effca5cf2b5aa92cc3f3e892",
"assets/packages/fluttericon/lib/fonts/RpgAwesome%203.ttf": "99232001effca5cf2b5aa92cc3f3e892",
"assets/packages/fluttericon/lib/fonts/Elusive%202.ttf": "23f24df0388819e94db2b3c19841841c",
"assets/packages/fluttericon/lib/fonts/MfgLabs.ttf": "09daa533ea11600a98e3148b7531afe3",
"assets/packages/fluttericon/lib/fonts/MfgLabs%203.ttf": "09daa533ea11600a98e3148b7531afe3",
"assets/packages/fluttericon/lib/fonts/Maki%203.ttf": "9ecdcd7d24a2461a55d532b86b2740bd",
"assets/packages/fluttericon/lib/fonts/Meteocons.ttf": "8b9c7982496155bb39c67eaf2a243731",
"assets/packages/fluttericon/lib/fonts/Maki%202.ttf": "9ecdcd7d24a2461a55d532b86b2740bd",
"assets/packages/fluttericon/lib/fonts/MfgLabs%202.ttf": "09daa533ea11600a98e3148b7531afe3",
"assets/packages/fluttericon/lib/fonts/Maki%204.ttf": "9ecdcd7d24a2461a55d532b86b2740bd",
"assets/packages/fluttericon/lib/fonts/MfgLabs%204.ttf": "09daa533ea11600a98e3148b7531afe3",
"assets/packages/fluttericon/lib/fonts/ModernPictograms.ttf": "5046c536516be5b91c15eb7795e0352d",
"assets/fonts/MaterialIcons-Regular%204.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/fonts/MaterialIcons-Regular%203.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/fonts/MaterialIcons-Regular%202.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"assets/fonts/MaterialIcons-Regular.otf": "4e6447691c9509f7acdbf8a931a85ca1",
"manifest%203.json": "82825481eacf8766e28de445ded23799"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
