Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4582A12FF88
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709738147; cv=none; b=VMNsFHXQVnYomyqQcryN08LCUf2N5ObR6Be/5ZF8o8h0PNxqZnNFUcRXuCoXAtG1iHgkQ71n6izSqxkqEcvfOfTW/9R2hNinmKc7m9u6peB5cRBrnoUMPL2/AcCdiHpXFs+zbCHnJtI60zcsOjVA/KT9sqyWBdoWBlphUxdV0Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709738147; c=relaxed/simple;
	bh=xUm4WiwaK4zdmUjWDeob0pXIaKC7zUTbFM3QaVD9a7A=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=k1B3B7NTfgOqv1sS8HEQWibR+IW7npJVnFvLZScw6t8PXULVW71HuuTzksZ2D9snPHTScZDwCW1tBKcJMeMeSXwjdv0/GuEidEa3GY4mDqrlJYFbtqq9OmypwwegPku8+RvH/ULLN6JSqtnBSiliqFATagzwfQ3yRZCMFnKfd/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709738147;
	bh=xUm4WiwaK4zdmUjWDeob0pXIaKC7zUTbFM3QaVD9a7A=;
	h=Subject:From:To:Date:From;
	b=oEpKUS8FplS3nydFtQNGYBzeA1luZ8byvLDInBMItI5oA30jMUnLPCX9th2e0sSOi
	 rozKQuE3oubFbg28xUS++YojR8Ky3GPGLtaaJvmkNX7A0qTFmNvWpsSAjwBGSWOjzX
	 l9fi/VPka3+qBUw/OBbiS9tuMzCkJG8+KlLCXsok=
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41CDC43394
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:15:46 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A2FA8D84BDB
	for <linux-kernel-announce@vger.kernel.org>; Wed,  6 Mar 2024 15:15:46 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.7.9 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 06 Mar 2024 15:15:46 +0000
Message-Id: <20240306151546.release-6.7.9@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.7.9
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.9.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.9.xz

Linux kernel version 6.7.9 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.9.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.7.9.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.7.9.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.7.9/v6.7.8

