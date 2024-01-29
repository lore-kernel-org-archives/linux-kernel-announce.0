Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36E9D502
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Jan 2024 01:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706492347; cv=none; b=JMQ1ayoARoDt4Zpcil96YITTEykG3A/ISNO/yvAwx4wfh14bQIq8v0pxFO1BYqtpmfURNBpYq/hbu/2QmNOaqeezUjYNQ15sOUnqeyUo+/tpRYN3knzh0dvfUUaGsyioTxChHROSaBoM7uRa1P9iq2El/pEi7D/NmQrOm4ej51E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706492347; c=relaxed/simple;
	bh=IRz+H01tHXMQop/TYb1qWGIDrOtKs409hdVTU28ylpE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Hi2lb8MCQpuyUcK4Noz6dwKfIQIDNcETU2p1mDlAgmgg+OpN7f8PvjmXQT/+U3zyqIYjL04xkwaJg3iPnqwpLXVtVC/FHrwgWXpPo8hz67m8m2veMSCu1mHPJFPbDfa6CShpwRA5TpmOJ/sg5vRndSXV1YEmP+2ziImhQ5PuaDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1706492347;
	bh=IRz+H01tHXMQop/TYb1qWGIDrOtKs409hdVTU28ylpE=;
	h=Subject:From:To:Date:From;
	b=vNQA4VFGfa15Gc9WVOL8LYE32vffGOS2FilQPqJGfBigBJTDqjyBbdfBUcZjxhtUy
	 mmuh5HHS4SsKBOsoVuNNxLbWejolfXLk9utTZpjmm1udK37GtXjpGe2W/0GkmmZmua
	 xBmsfGAY6dxoJCh10noFebCApY8WYDH6hrs5doPs=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B19C433F1
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Jan 2024 01:39:06 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 6B2F3E3237E
	for <linux-kernel-announce@vger.kernel.org>; Mon, 29 Jan 2024 01:39:06 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.8-rc2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 29 Jan 2024 01:39:06 +0000
Message-Id: <20240129013906.release-6.8-rc2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.8-rc2
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.8-rc2.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.8-rc2/v6.7

Linux kernel version 6.8-rc2 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.8-rc2.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.8-rc2/v6.7

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.8-rc2/v6.8-rc1

