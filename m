Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CCE20B33
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713007244; cv=none; b=iwI8+R6iPZ9KBhF3uCNK9azjeNJiQiZ6O/m7XquLm5Nx3RZC3Ggv6S1SE46MXa23pnVZolLJCJo+NffUdIklf2O0v0BT1GvfCVoUrRAsx7YLyUvGqhlyah+10Bm4zb5epXOVVgjmHIhvEBvyAVSwuR7yZIRz+8Co6wuHN5o3mrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713007244; c=relaxed/simple;
	bh=MNL1aJOQToySoxS4SvcWjRojm9BU2f7H4VZAEy7fFNQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VltkWB4PzKbOQRLnbJgs8rJaVpFt17aMqbqFDHf1pb2h7Nvw/iZk8qfIBuP6fWMtbzgunghAHBNzHkI31b2t6P40TIJbr0kiY6NfRUJ+MZ8SZ5jQNv4Fc7luNWgmKqt70g2IZ28C2s4p315I8xPRBh389bDS2VlCQ/JK2V90EDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1713007244;
	bh=MNL1aJOQToySoxS4SvcWjRojm9BU2f7H4VZAEy7fFNQ=;
	h=Subject:From:To:Date:From;
	b=TtI/dUxGmm8SCei9lobOcv/Pb5x7p4rB8u+eV5N/2J+c1i3YqO0cyU0xT870+SKeX
	 FUmykyn/8waQ5//ypftkgfXvqWrMwA94Ej3gFV2FCdLdgwVeKM+S3xe8PpWSFfB6D1
	 QsyEk847qQL903oN4ABFcWOEGMej4Y2LlHGr9oe8=
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF915C113CD
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:20:43 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D08CFDF785E
	for <linux-kernel-announce@vger.kernel.org>; Sat, 13 Apr 2024 11:20:43 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.215 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 13 Apr 2024 11:20:43 +0000
Message-Id: <20240413112043.release-5.10.215@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.215
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.215.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.215.xz

Linux kernel version 5.10.215 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.215.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.215.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.215.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.215/v5.10.214

