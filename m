Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C613D0D9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713007843; cv=none; b=bgOBM1pm2Y7Z+khXdnC/ksiYtwsAu+CjTmqiYSyF0cqu4Hx7uErebu6zFXXXuvJqtmF8GdOZ3f0TKneXhMXiPZ5A3HAWM1La63bMBaVLM+/v50esFDgJHBrrNtVvzBTpYlGlCELy/OTEAS4arr2td3FPBZWYplAQpnLB1Pjp7jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713007843; c=relaxed/simple;
	bh=J4S0udMYJp6EGv1URFET3jZYnejr2Q7nwhDYk4ofTg4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=esPHGrwRq4crD3iC5LrLpsbd4udNNB0dq/+crsMAzET1w/i/ylz5wY8hdlZ51FF9wjmxqYoQ5BSPt/uTd9PhiTTOK/txREblQuiW8aIRWCHBA5/mJFg8hMVkQ6NEYhs/Hjkrfkci/Yrmebhphwsy7kJ2DenaMaXArvdP3pAB74s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713007842;
	bh=J4S0udMYJp6EGv1URFET3jZYnejr2Q7nwhDYk4ofTg4=;
	h=Subject:From:To:Date:From;
	b=ioyDa6rS3gAuDfpsfff+RoHHPiYA5kzGupO+NjS4vgTyfKsGLOPdU9YRfEc2nBrQE
	 XeG5r+Yzr7Z4QVn0WRj27ISoKpFkq/2I+yYqBKURc90WVVjRRWksoVeU7qdjylnLMc
	 5gBi5tyGKVSQyeeCk+mciCwBeoQlw3KGY1N47lt8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9954FC2BD10
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:30:42 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 89E9DC43140
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:30:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.27 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 13 Apr 2024 11:30:42 +0000
Message-Id: <20240413113042.release-6.6.27@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.27
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.27.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.27.xz

Linux kernel version 6.6.27 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.27.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.27.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.27.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.27/v6.6.26

