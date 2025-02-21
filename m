Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753F020C48B
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740143419; cv=none; b=ZzV17p0w9mqCDWELIgirXOXVU0c6Uh9IdkdLq9PUB3pExEFOj9MOeFHx5GXCiSO7iernmdZNmEdf7G7dLgMLsOqheJSgfJjL13X4a6N102OV6FKN+Qy8KNixaP68gLtiCs5Zs3bAl2g8rfkHqEliCaCNxWXboFecaxgji7mrMio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740143419; c=relaxed/simple;
	bh=c/crua1esoqBICFA6714k8tXPez4AZG5tf84n7lIrjI=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Nyg7ifXpjJ3OAcK6xgJ0Gq9dzmzZQ0PFUI8yS6qXKCTFQLPgBI8Xvss92NqfFuWP0/omTARsqN0YEr7eI4vfGbZ5THA44AKQafVfnEn5ekYlXsDFj7lSblN5d6im58mfMjZ3JkQgQyOWaU8YL6np4eXICWPlattFTT++q6TaLy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1740143419;
	bh=c/crua1esoqBICFA6714k8tXPez4AZG5tf84n7lIrjI=;
	h=Subject:From:To:Date:From;
	b=YtIwLCaMSfHNiQcobrpwDrf9wsVSrQBB0N7sNIsWg3V9uRT6hTCwkXlm4wheKn7rJ
	 SaKOg3E9dNaBFStBClUfAUOIDy1FxSdlglRBfoEk9YqHPQOygS8eWuMqi6bFybtgmy
	 YWDMAKhrTTmIQl57jK8azli76hf9dDiRNHbFHvt8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EB904C4CED6
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:10:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EF36A3804CAF
	for <linux-kernel-announce@vger.kernel.org>; Fri, 21 Feb 2025 13:10:49 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.129 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 21 Feb 2025 13:10:48 +0000
Message-Id: <20250221131048.release-6.1.129@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.129
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.129.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.129.xz

Linux kernel version 6.1.129 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.129.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.129.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.129.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.129/v6.1.128

