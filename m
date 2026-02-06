Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFEA22DC772
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 15:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770393322; cv=none; b=VW/aXZAJ52e9GLbQSbwrsq8ovDYCJrAeGydO/NHED7Te5hGwLoiXR5+EPJ3i3FFAT9tx548j25kw6jc07GEHTRZ4GV08eerb5Nv+FAmsI5WcLi+L4o8Q6mT116fH+c2OA+pwue/bMAKj1GM6foPfYaQpP5QOOuBuiH0shWNParI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770393322; c=relaxed/simple;
	bh=RTLLYT500d6No/MXLc5dAToZ7/XovZtsn6NPXIy/wfk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=F4vos9zw8oyna1CysM51qRo1jD/B7rvdFCpJ6Y2iom/y3XhgeN50hAjzg7VDXC/JArFbJJBXYdvTXKnk6b6aJOWcAPR6MBt/qkhUZgV/D/9hTEExATxDq/2hawj7VqBlbA1WC3InzIOsfWV8452lLU7EBxOQFEHBMKAqN0Np3eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1770393322;
	bh=RTLLYT500d6No/MXLc5dAToZ7/XovZtsn6NPXIy/wfk=;
	h=Subject:From:To:Date:From;
	b=q6mb67dKWQYX2R7iTLLGWvv4wojN7V0jnKAq2JPi5QQ1KXOKzdalpCVdSnaKCnOiW
	 r9cgx8Up30ANlvHzc9M45mkHPiC3iM0f1TnQ4gGzwICXjO0CigglTv4/ndMhgWizIb
	 86L6MxBr584QGorlkNFUhQO9VqdXTAhZDQvtJEEw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC03BC116C6
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 15:55:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 4AE773809A02
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Feb 2026 15:55:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.199 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Feb 2026 15:55:19 +0000
Message-Id: <20260206155519.release-5.15.199@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.199
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.199.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.199.xz

Linux kernel version 5.15.199 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.199.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.199.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.199.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.199/v5.15.198

