Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4534935CB81
	for <linux-kernel-announce@vger.kernel.org>; Mon, 27 Apr 2026 16:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777307163; cv=none; b=nc0/rmRiLM9OCm5czf4kcSUYxKToOxycP2t9S85+vUP1WJnktwZiLkccKTqHSNG2h/gMJbo6HZvGZKbUb9EXeisDDyL6DCpIg6S7leodvX9ZE9U6OehHoHazumKJ6W4YNWzZPHbFzU3+gMDZVOFVyfRzCRqMWbaxzjkFcJ3QGDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777307163; c=relaxed/simple;
	bh=Qer5APET9cC5ceIvAk8F3CiUbM0QrdkivgdfRKIsos4=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=XsKGNrS3XtwbRHAoCpXDo7BadszaT5Ns9Ck0ZoCu4O5PyeYxPaqNh0141gGFO+1WWBQMi/JL7hak+wnOjfmk0RIw6aIqLCXblGA2RlxFrSq0l8zEvrl7EPf3oZBaw8va9zz+/12i5gNVj7CYUIEfkon3HbLnfMzLWmybwVSvMpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1777307163;
	bh=Qer5APET9cC5ceIvAk8F3CiUbM0QrdkivgdfRKIsos4=;
	h=Subject:From:To:Date:From;
	b=WK3oVz7LIVfwmhMhaUPsRqfk//T/ohKQQHuKz3kXQ4iz3Ci2Ogh9Req2CybkxoVOh
	 /d0SfSgmu6lIANXVeJ1oAsHgQ285Bp09TEM/AOKBJJ02ao2p8raMedpO2Kt/sxepFK
	 ab2XVw1nUATHQ/gy2QnrMPLt6NxLUnj3g+uaacZk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8467C19425
	for <linux-kernel-announce@vger.kernel.org>; Mon, 27 Apr 2026 16:26:02 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BA20E38119FF
	for <linux-kernel-announce@vger.kernel.org>; Mon, 27 Apr 2026 16:25:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.25 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 27 Apr 2026 16:25:20 +0000
Message-Id: <20260427162520.release-6.18.25@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.25
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.25.tar.xz

Linux kernel version 6.18.25 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.25.tar.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.25.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.25/v6.18.24

