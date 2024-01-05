Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217922D78A
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jan 2024 14:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1704464445;
	bh=68tBVS381PD15Qr7Jio0R5QWFhmGYzeHssy+LJAg9ao=;
	h=Subject:From:To:Date:From;
	b=vI4Iajc64yMe25W9MsDiDdAYUG43AAKi91sVpfnMYmfgHmaMPatWb1FTbFvccKvk5
	 hzC238hKyqYsCjtcN7XcWWErOlC89ofsz4kSAqB9ycP1pUzSJ5F0IJCD3pott1dfqt
	 CDgOGa5TNUk0Hp88BGVtEXJ5iBZwnEZNhKIjT3y4=
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEACCC433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jan 2024 14:20:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 9609FC4167E
	for <linux-kernel-announce@vger.kernel.org>; Fri,  5 Jan 2024 14:20:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.206 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 05 Jan 2024 14:20:44 +0000
Message-Id: <20240105142044.release-5.10.206@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.206
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.206.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.206.xz

Linux kernel version 5.10.206 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.206.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.206.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.206.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.206/v5.10.205

