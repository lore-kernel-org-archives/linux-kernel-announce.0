Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA441AA790
	for <linux-kernel-announce@vger.kernel.org>; Fri,  4 Oct 2024 15:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728054051; cv=none; b=udf8NdhzRse7j6Er9HbbF2wh/PYrruzD1xQDQMpPYXiNZs5vFNrk7PInr+tk7+U47lkPH+nJJqzJQRft+W9RlKKpC2LsJZk4Zz1eMqrsVcUwF2IoBM6GUgPu+bjGb40MdLJG36pZrY2cyVIEHpVLw639/DcACIxekUwfYvPiaII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728054051; c=relaxed/simple;
	bh=020VqA8Gtxj8Qgdx6Dc9IQU++a1qQuaj7wWSlETW23c=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=DdXZaxeMXafxK23cWwghgmw4InT0+JME9mk+POHR1Rzu2fZf4ZrbuaDmSKY6f3JcNvzXEedSKyh9/sSaKLFW+JAoD+DaxWW7UlN0EAe2LKeau8rFuMTu8DS4KTzd22SLtm4pqrgAY7//SrWyZDr/sJh+LcxelMkQdK2gePA+Iko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1728054051;
	bh=020VqA8Gtxj8Qgdx6Dc9IQU++a1qQuaj7wWSlETW23c=;
	h=Subject:From:To:Date:From;
	b=lRznsCHqqYFWoqUop7UCT4GC7SzTNCnoGMxaU8yPJJNeNjQ2tz075BTOljwGQk+72
	 eAchVglP7azjBymlNBUI5JZ8JxILY9CC+EI/R8CNGqTFzfsxiU073bGySgRBeZZbW/
	 ksTaP+y6REgoba+hEZyyeUsVQcR5vTb7cv1IeOd4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E161C4CEC6
	for <linux-kernel-announce@vger.kernel.org>; Fri,  4 Oct 2024 15:00:51 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B35D739F76FF
	for <linux-kernel-announce@vger.kernel.org>; Fri,  4 Oct 2024 15:00:55 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.11.2 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 04 Oct 2024 15:00:54 +0000
Message-Id: <20241004150054.release-6.11.2@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.11.2
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.2.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.2.xz

Linux kernel version 6.11.2 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.2.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.11.2.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.11.2.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.11.2/v6.11.1

