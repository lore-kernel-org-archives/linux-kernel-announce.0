Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC2610A13
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Feb 2024 20:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707165047; cv=none; b=Hxv/El37Gjcrn5Jt2BHOURItYodkTE4yalsXJ1WplStboBBuIaEOR1mWXrcAdZ/D1KIvWR5T7ysjr1v8CNlw4NTWIAYiVfnhbdez7jCaTAvJ99f+Kx02VGDJN/6YaMPHU+BSyCs9mE/qzRDiKDc5+766fMi4V4KW/h5+hYNx+eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707165047; c=relaxed/simple;
	bh=5ERRqZIcGtQYJP9yenyh8qbQILc/yC+JvfJay4GpwNQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=ZV+oJVV0TMJ0iNiOdnbvLP13Q1fQvSBiq12rZtM0vnTXVWX0boj1sM1bkoCvXmqrZoH7nm4NFPphznz4S1CZMsuJKYXEXYZqC7ESN3zpPZ3W6uQue82MGKBoI+obvEc+brhmbLUAR/cdr/NjL3gZhdqlWsRpwDZe6m+w80Bkv4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1707165047;
	bh=5ERRqZIcGtQYJP9yenyh8qbQILc/yC+JvfJay4GpwNQ=;
	h=Subject:From:To:Date:From;
	b=tG7uuqlqa5NL0gpF/VXT8JEJx37Ze2qXjijWDqKEF7b2oPpcQXdxi2G4YShSyk5IO
	 TFYxY6/wSSub09+a/NJjt7vNdyWBwwBVKsYSCoR07W6LQfrlILjkDEPfZtdYfjPB0n
	 D1EYJ7a01uTYsytl2oOm5CzRbFWUiHtyNNn99kVo=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5629AC433C7
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Feb 2024 20:30:47 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 3AA66E2F2F0
	for <linux-kernel-announce@vger.kernel.org>; Mon,  5 Feb 2024 20:30:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.77 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 05 Feb 2024 20:30:47 +0000
Message-Id: <20240205203047.release-6.1.77@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.77
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.77.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.77.xz

Linux kernel version 6.1.77 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.77.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.77.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.77.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.77/v6.1.76

