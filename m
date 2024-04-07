Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15A43BBE8
	for <linux-kernel-announce@vger.kernel.org>; Sun,  7 Apr 2024 21:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712523783; cv=none; b=V2OcpgCZ9lUIzw+uOm/1qjcvO/CblEZmpCw16ey3uLqkVLMjjmr9R4jkupQvfz6Oe8MqFA1bdF/ZROiRlLW48dG9k2jutEvpbPIq1L0LblY6GxSEGTsVA00rriLWC1ajlN6/I2qQCUB9yvkSlAkFxG9+55VAjq8jisH/fY2byTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712523783; c=relaxed/simple;
	bh=/YuL9e1pnIZiP95fcdvAu9JT0+0yJQkqmal07syHTsY=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=sgcV96rCY51WdXl8YmYD/EWdr0cnVqJzpBeap+1eXi12bmLVY2tDO6n9NQ/5bMMEOfHuPFd0dCVgLNNm2Y0WG7VEmU6J91iIsIBITBBDGbnIprwfMYs9fr4hie9rlhuRlQZE2ljvtmd50Xn/gkbc3kx6VjYPDMGal8PdiiidAL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1712523783;
	bh=/YuL9e1pnIZiP95fcdvAu9JT0+0yJQkqmal07syHTsY=;
	h=Subject:From:To:Date:From;
	b=S2snUD4F9xHFPbixEpdBEwaI2n5zoBwo/M51y8Mu/vnmz4XNLP3dhul+aaZyki1jM
	 RvQY5DZ299sLxCLmgKGDa9Nr3Zr6Ds/Mux4SaYGOM5x9iXPVMYBj8Ruyb11Wh0uY+z
	 aDKtYjUMIolhVwJ81Yegj8jL4NTdvU4sv0ae/VBw=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67DD7C433C7
	for <linux-kernel-announce@vger.kernel.org>; Sun,  7 Apr 2024 21:03:03 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 58250D7982A
	for <linux-kernel-announce@vger.kernel.org>; Sun,  7 Apr 2024 21:03:03 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.9-rc3 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 07 Apr 2024 21:03:03 +0000
Message-Id: <20240407210303.release-6.9-rc3@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.9-rc3
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.9-rc3.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.9-rc3/v6.8

Linux kernel version 6.9-rc3 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.9-rc3.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.9-rc3/v6.8

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.9-rc3/v6.9-rc2

