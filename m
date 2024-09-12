Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A92F01922F8
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:45:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726134308; cv=none; b=TuLNmnCfTEMg8rBmziPOG7wvqiHOoXl5jLKdo5lxdJta5ql0qXBaghNgWIFPWkWAvFS40U6mSuipSD9h5buoAT0GVCnov2iR0Yq+Nnhf6Zy1qt7UEb2lo01BFDdTvzP77HCfUR6XSx91tVf7Z81pmYNo0W3ZoqoTuHXuXF02gbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726134308; c=relaxed/simple;
	bh=B/SoYgbajgsn69QqFttXmjFlOkK5jr4sSj7zVz9lvVE=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=HYLEt+TsO9g8/k3+aD/zkrytXcz0QbTk5XM2A7zWJ0AtqZqYPLUrdk5Vl8odl1eCxPuNZLrBMtfih3wDpTgLRCFk8vb3R3yjbosA8MWFVeAABGLlscTLe6heuqNo1nWb+vSridcJy6InGDyJ3vNi/9cAb8mo3voMy3UYfjQl9kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1726134308;
	bh=B/SoYgbajgsn69QqFttXmjFlOkK5jr4sSj7zVz9lvVE=;
	h=Subject:From:To:Date:From;
	b=wP3Q34ZY1rZ7RJmH4mzqUX2buODajsoSz56cdM2NyRfSmmSmJEyxFZYZelVccr55L
	 /IcmO7IorndB2GN+Mg+i/12q96uywXG5gMkEaiHQcBW67+5UDLlYf8i/6YDoj/AmRa
	 GYco7fh7UYmsLeK89w55800wT9/BQ9MzbQOU0g+A=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AB01C4CEC3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:45:08 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 750183806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 12 Sep 2024 09:45:10 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.284 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 12 Sep 2024 09:45:09 +0000
Message-Id: <20240912094509.release-5.4.284@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.284
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.284.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.284.xz

Linux kernel version 5.4.284 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.284.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.284.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.284.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.284/v5.4.283

